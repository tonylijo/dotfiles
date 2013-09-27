"nerdtree startup and session close settings
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q
"end nerdtree starup settings
set nu
set cindent
syntax on
"tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"end tab settings
"set encoding=utf-8
"set scrolloff=3
"set autoindent 
"set showmode
"set showcmd
"set hidden
let mapleader=","

"""search options
set ignorecase
set smartcase
set gdefault
set incsearch
"set showmatch
"set hlsearch
""" end search options

"""remap arow keys to devolep vim habbits
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
"""end remap arrow keys

"""window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l
"""end window movement

let g:clang_use_library=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_auto_user_options=''
let g:clang_memory_percent=70
set conceallevel=2
set concealcursor=inv
let g:clang_snippets=1
let g:clang_conceal_snippets=1
set completeopt=menu,menuone,longest
"let g:clang_snippets_engine='clang_complete'
let g:clang_snippets_engine='ultisnips'
set pumheight=20
let g:clang_library_path="/usr/lib/"
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'
Bundle 'Rip-Rip/clang_complete'
Bundle 'ervandew/supertab'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdtree'
filetype plugin indent on
