
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct internal_state {int dummy; } ;
struct inflate_state {int wrap; unsigned int wbits; int * window; } ;
struct TYPE_7__ {int * working_window; struct inflate_state inflate_state; } ;
struct TYPE_6__ {struct internal_state* state; int * msg; } ;


 TYPE_4__* WS (TYPE_1__*) ;
 int Z_STREAM_ERROR ;
 int zlib_inflateReset (TYPE_1__*) ;

int zlib_inflateInit2(z_streamp strm, int windowBits)
{
    struct inflate_state *state;

    if (strm == ((void*)0)) return Z_STREAM_ERROR;
    strm->msg = ((void*)0);

    state = &WS(strm)->inflate_state;
    strm->state = (struct internal_state *)state;

    if (windowBits < 0) {
        state->wrap = 0;
        windowBits = -windowBits;
    }
    else {
        state->wrap = (windowBits >> 4) + 1;
    }
    if (windowBits < 8 || windowBits > 15) {
        return Z_STREAM_ERROR;
    }
    state->wbits = (unsigned)windowBits;
    state->window = &WS(strm)->working_window[0];

    return zlib_inflateReset(strm);
}
