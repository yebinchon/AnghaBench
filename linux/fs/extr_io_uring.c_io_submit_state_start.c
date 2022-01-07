
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_submit_state {unsigned int ios_left; int * file; scalar_t__ free_reqs; int plug; } ;
struct io_ring_ctx {int dummy; } ;


 int blk_start_plug (int *) ;

__attribute__((used)) static void io_submit_state_start(struct io_submit_state *state,
      struct io_ring_ctx *ctx, unsigned max_ios)
{
 blk_start_plug(&state->plug);
 state->free_reqs = 0;
 state->file = ((void*)0);
 state->ios_left = max_ios;
}
