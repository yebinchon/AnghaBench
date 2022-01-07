
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_submit_state {size_t cur_req; int * reqs; scalar_t__ free_reqs; int plug; } ;


 int blk_finish_plug (int *) ;
 int io_file_put (struct io_submit_state*) ;
 int kmem_cache_free_bulk (int ,scalar_t__,int *) ;
 int req_cachep ;

__attribute__((used)) static void io_submit_state_end(struct io_submit_state *state)
{
 blk_finish_plug(&state->plug);
 io_file_put(state);
 if (state->free_reqs)
  kmem_cache_free_bulk(req_cachep, state->free_reqs,
     &state->reqs[state->cur_req]);
}
