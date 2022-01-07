
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int deleting; struct tcf_proto* next; } ;
struct tcf_chain_info {struct tcf_proto** pprev; struct tcf_proto* next; } ;
struct tcf_chain {int filter_chain_lock; struct tcf_proto* filter_chain; } ;
struct netlink_ext_ack {int dummy; } ;


 int RCU_INIT_POINTER (struct tcf_proto*,struct tcf_proto*) ;
 int WARN_ON (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcf_chain0_head_change (struct tcf_chain*,struct tcf_proto*) ;
 struct tcf_proto* tcf_chain_dereference (struct tcf_proto*,struct tcf_chain*) ;
 int tcf_proto_check_delete (struct tcf_proto*,int) ;
 int tcf_proto_put (struct tcf_proto*,int,struct netlink_ext_ack*) ;
 int tcf_proto_signal_destroying (struct tcf_chain*,struct tcf_proto*) ;

__attribute__((used)) static void tcf_chain_tp_delete_empty(struct tcf_chain *chain,
          struct tcf_proto *tp, bool rtnl_held,
          struct netlink_ext_ack *extack)
{
 struct tcf_chain_info chain_info;
 struct tcf_proto *tp_iter;
 struct tcf_proto **pprev;
 struct tcf_proto *next;

 mutex_lock(&chain->filter_chain_lock);


 for (pprev = &chain->filter_chain;
      (tp_iter = tcf_chain_dereference(*pprev, chain));
      pprev = &tp_iter->next) {
  if (tp_iter == tp) {
   chain_info.pprev = pprev;
   chain_info.next = tp_iter->next;
   WARN_ON(tp_iter->deleting);
   break;
  }
 }




 if (!tp_iter || !tcf_proto_check_delete(tp, rtnl_held)) {
  mutex_unlock(&chain->filter_chain_lock);
  return;
 }

 tcf_proto_signal_destroying(chain, tp);
 next = tcf_chain_dereference(chain_info.next, chain);
 if (tp == chain->filter_chain)
  tcf_chain0_head_change(chain, next);
 RCU_INIT_POINTER(*chain_info.pprev, next);
 mutex_unlock(&chain->filter_chain_lock);

 tcf_proto_put(tp, rtnl_held, extack);
}
