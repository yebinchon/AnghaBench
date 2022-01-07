
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int ush ;
typedef int ulg ;
typedef int uch ;
struct internal_state {int dummy; } ;
struct TYPE_7__ {char* overlay_memory; int * head_memory; int * prev_memory; scalar_t__* window_memory; int deflate_memory; } ;
typedef TYPE_2__ deflate_workspace ;
struct TYPE_8__ {int noheader; int w_bits; int w_size; int w_mask; int hash_bits; int hash_size; int hash_mask; int hash_shift; int lit_bufsize; int pending_buf_size; int level; int strategy; scalar_t__ method; int * pending_buf; int * l_buf; int * d_buf; int * head; int * prev; scalar_t__* window; TYPE_1__* strm; } ;
typedef TYPE_3__ deflate_state ;
struct TYPE_6__ {struct internal_state* state; scalar_t__ workspace; int * msg; } ;
typedef int Pos ;
typedef scalar_t__ Byte ;


 int MAX_MEM_LEVEL ;
 int MIN_MATCH ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_DEFLATED ;
 int Z_HUFFMAN_ONLY ;
 int Z_STREAM_ERROR ;
 int zlib_deflateReset (TYPE_1__*) ;
 int zlib_deflate_head_memsize (int) ;
 int zlib_deflate_prev_memsize (int) ;
 int zlib_deflate_window_memsize (int) ;

int zlib_deflateInit2(
 z_streamp strm,
 int level,
 int method,
 int windowBits,
 int memLevel,
 int strategy
)
{
    deflate_state *s;
    int noheader = 0;
    deflate_workspace *mem;
    char *next;

    ush *overlay;




    if (strm == ((void*)0)) return Z_STREAM_ERROR;

    strm->msg = ((void*)0);

    if (level == Z_DEFAULT_COMPRESSION) level = 6;

    mem = (deflate_workspace *) strm->workspace;

    if (windowBits < 0) {
        noheader = 1;
        windowBits = -windowBits;
    }
    if (memLevel < 1 || memLevel > MAX_MEM_LEVEL || method != Z_DEFLATED ||
        windowBits < 9 || windowBits > 15 || level < 0 || level > 9 ||
 strategy < 0 || strategy > Z_HUFFMAN_ONLY) {
        return Z_STREAM_ERROR;
    }





    next = (char *) mem;
    next += sizeof(*mem);
    mem->window_memory = (Byte *) next;
    next += zlib_deflate_window_memsize(windowBits);
    mem->prev_memory = (Pos *) next;
    next += zlib_deflate_prev_memsize(windowBits);
    mem->head_memory = (Pos *) next;
    next += zlib_deflate_head_memsize(memLevel);
    mem->overlay_memory = next;

    s = (deflate_state *) &(mem->deflate_memory);
    strm->state = (struct internal_state *)s;
    s->strm = strm;

    s->noheader = noheader;
    s->w_bits = windowBits;
    s->w_size = 1 << s->w_bits;
    s->w_mask = s->w_size - 1;

    s->hash_bits = memLevel + 7;
    s->hash_size = 1 << s->hash_bits;
    s->hash_mask = s->hash_size - 1;
    s->hash_shift = ((s->hash_bits+MIN_MATCH-1)/MIN_MATCH);

    s->window = (Byte *) mem->window_memory;
    s->prev = (Pos *) mem->prev_memory;
    s->head = (Pos *) mem->head_memory;

    s->lit_bufsize = 1 << (memLevel + 6);

    overlay = (ush *) mem->overlay_memory;
    s->pending_buf = (uch *) overlay;
    s->pending_buf_size = (ulg)s->lit_bufsize * (sizeof(ush)+2L);

    s->d_buf = overlay + s->lit_bufsize/sizeof(ush);
    s->l_buf = s->pending_buf + (1+sizeof(ush))*s->lit_bufsize;

    s->level = level;
    s->strategy = strategy;
    s->method = (Byte)method;

    return zlib_deflateReset(strm);
}
