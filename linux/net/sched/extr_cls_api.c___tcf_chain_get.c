
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_chain {int action_refcnt; int refcnt; } ;
struct tcf_block {int lock; } ;


 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int RTM_NEWCHAIN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tc_chain_notify (struct tcf_chain*,int *,int ,int,int ,int) ;
 struct tcf_chain* tcf_chain_create (struct tcf_block*,int ) ;
 int tcf_chain_hold (struct tcf_chain*) ;
 struct tcf_chain* tcf_chain_lookup (struct tcf_block*,int ) ;

__attribute__((used)) static struct tcf_chain *__tcf_chain_get(struct tcf_block *block,
      u32 chain_index, bool create,
      bool by_act)
{
 struct tcf_chain *chain = ((void*)0);
 bool is_first_reference;

 mutex_lock(&block->lock);
 chain = tcf_chain_lookup(block, chain_index);
 if (chain) {
  tcf_chain_hold(chain);
 } else {
  if (!create)
   goto errout;
  chain = tcf_chain_create(block, chain_index);
  if (!chain)
   goto errout;
 }

 if (by_act)
  ++chain->action_refcnt;
 is_first_reference = chain->refcnt - chain->action_refcnt == 1;
 mutex_unlock(&block->lock);






 if (is_first_reference && !by_act)
  tc_chain_notify(chain, ((void*)0), 0, NLM_F_CREATE | NLM_F_EXCL,
    RTM_NEWCHAIN, 0);

 return chain;

errout:
 mutex_unlock(&block->lock);
 return chain;
}
