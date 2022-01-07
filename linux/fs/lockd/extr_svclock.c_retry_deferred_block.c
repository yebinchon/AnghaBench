
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_block {int b_flags; TYPE_1__* b_deferred_req; } ;
struct TYPE_2__ {int (* revisit ) (TYPE_1__*,int ) ;} ;


 int B_GOT_CALLBACK ;
 int B_TIMED_OUT ;
 int NLM_TIMEOUT ;
 int dprintk (char*,struct nlm_block*,int) ;
 int nlmsvc_insert_block (struct nlm_block*,int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
retry_deferred_block(struct nlm_block *block)
{
 if (!(block->b_flags & B_GOT_CALLBACK))
  block->b_flags |= B_TIMED_OUT;
 nlmsvc_insert_block(block, NLM_TIMEOUT);
 dprintk("revisit block %p flags %d\n", block, block->b_flags);
 if (block->b_deferred_req) {
  block->b_deferred_req->revisit(block->b_deferred_req, 0);
  block->b_deferred_req = ((void*)0);
 }
}
