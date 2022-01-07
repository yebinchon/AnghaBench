
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct inflate_state {unsigned int wsize; unsigned int write; unsigned int whave; scalar_t__ window; } ;
struct TYPE_3__ {unsigned int avail_out; scalar_t__ next_out; scalar_t__ state; } ;


 int memcpy (scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static void zlib_updatewindow(z_streamp strm, unsigned out)
{
    struct inflate_state *state;
    unsigned copy, dist;

    state = (struct inflate_state *)strm->state;


    copy = out - strm->avail_out;
    if (copy >= state->wsize) {
        memcpy(state->window, strm->next_out - state->wsize, state->wsize);
        state->write = 0;
        state->whave = state->wsize;
    }
    else {
        dist = state->wsize - state->write;
        if (dist > copy) dist = copy;
        memcpy(state->window + state->write, strm->next_out - copy, dist);
        copy -= dist;
        if (copy) {
            memcpy(state->window, strm->next_out - copy, copy);
            state->write = copy;
            state->whave = state->wsize;
        }
        else {
            state->write += dist;
            if (state->write == state->wsize) state->write = 0;
            if (state->whave < state->wsize) state->whave += dist;
        }
    }
}
