
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto_ops {int dummy; } ;
struct tcf_chain {int explicitly_created; unsigned int action_refcnt; unsigned int refcnt; int flushing; int index; void* tmplt_priv; struct tcf_proto_ops* tmplt_ops; struct tcf_block* block; } ;
struct tcf_block {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tc_chain_notify_delete (struct tcf_proto_ops const*,void*,int ,struct tcf_block*,int *,int ,int ,int) ;
 int tc_chain_tmplt_del (struct tcf_proto_ops const*,void*) ;
 int tcf_chain_destroy (struct tcf_chain*,int) ;
 int tcf_chain_detach (struct tcf_chain*) ;

__attribute__((used)) static void __tcf_chain_put(struct tcf_chain *chain, bool by_act,
       bool explicitly_created)
{
 struct tcf_block *block = chain->block;
 const struct tcf_proto_ops *tmplt_ops;
 bool free_block = 0;
 unsigned int refcnt;
 void *tmplt_priv;

 mutex_lock(&block->lock);
 if (explicitly_created) {
  if (!chain->explicitly_created) {
   mutex_unlock(&block->lock);
   return;
  }
  chain->explicitly_created = 0;
 }

 if (by_act)
  chain->action_refcnt--;





 refcnt = --chain->refcnt;
 tmplt_ops = chain->tmplt_ops;
 tmplt_priv = chain->tmplt_priv;


 if (refcnt - chain->action_refcnt == 0 && !by_act) {
  tc_chain_notify_delete(tmplt_ops, tmplt_priv, chain->index,
           block, ((void*)0), 0, 0, 0);

  chain->flushing = 0;
 }

 if (refcnt == 0)
  free_block = tcf_chain_detach(chain);
 mutex_unlock(&block->lock);

 if (refcnt == 0) {
  tc_chain_tmplt_del(tmplt_ops, tmplt_priv);
  tcf_chain_destroy(chain, free_block);
 }
}
