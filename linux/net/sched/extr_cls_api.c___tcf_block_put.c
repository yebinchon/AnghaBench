
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block_ext_info {int dummy; } ;
struct tcf_block {int net; int lock; int chain_list; int refcnt; } ;
struct Qdisc {int dummy; } ;


 int list_empty (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_dec_and_mutex_lock (int *,int *) ;
 int tcf_block_destroy (struct tcf_block*) ;
 int tcf_block_flush_all_chains (struct tcf_block*,int) ;
 int tcf_block_offload_unbind (struct tcf_block*,struct Qdisc*,struct tcf_block_ext_info*) ;
 int tcf_block_remove (struct tcf_block*,int ) ;
 scalar_t__ tcf_block_shared (struct tcf_block*) ;

__attribute__((used)) static void __tcf_block_put(struct tcf_block *block, struct Qdisc *q,
       struct tcf_block_ext_info *ei, bool rtnl_held)
{
 if (refcount_dec_and_mutex_lock(&block->refcnt, &block->lock)) {






  bool free_block = list_empty(&block->chain_list);

  mutex_unlock(&block->lock);
  if (tcf_block_shared(block))
   tcf_block_remove(block, block->net);

  if (q)
   tcf_block_offload_unbind(block, q, ei);

  if (free_block)
   tcf_block_destroy(block);
  else
   tcf_block_flush_all_chains(block, rtnl_held);
 } else if (q) {
  tcf_block_offload_unbind(block, q, ei);
 }
}
