
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int next; } ;
struct tcf_chain {int flushing; int filter_chain_lock; int filter_chain; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tcf_proto* rcu_dereference_protected (int ,int) ;
 int tcf_chain0_head_change (struct tcf_chain*,int *) ;
 struct tcf_proto* tcf_chain_dereference (int ,struct tcf_chain*) ;
 int tcf_proto_put (struct tcf_proto*,int,int *) ;
 int tcf_proto_signal_destroying (struct tcf_chain*,struct tcf_proto*) ;

__attribute__((used)) static void tcf_chain_flush(struct tcf_chain *chain, bool rtnl_held)
{
 struct tcf_proto *tp, *tp_next;

 mutex_lock(&chain->filter_chain_lock);
 tp = tcf_chain_dereference(chain->filter_chain, chain);
 while (tp) {
  tp_next = rcu_dereference_protected(tp->next, 1);
  tcf_proto_signal_destroying(chain, tp);
  tp = tp_next;
 }
 tp = tcf_chain_dereference(chain->filter_chain, chain);
 RCU_INIT_POINTER(chain->filter_chain, ((void*)0));
 tcf_chain0_head_change(chain, ((void*)0));
 chain->flushing = 1;
 mutex_unlock(&chain->filter_chain_lock);

 while (tp) {
  tp_next = rcu_dereference_protected(tp->next, 1);
  tcf_proto_put(tp, rtnl_held, ((void*)0));
  tp = tp_next;
 }
}
