
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct mini_Qdisc {int rcu; struct tcf_proto* filter_list; } ;
struct mini_Qdisc_pair {int * p_miniq; struct mini_Qdisc miniq2; struct mini_Qdisc miniq1; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int call_rcu (int *,int ) ;
 int mini_qdisc_rcu_func ;
 int rcu_assign_pointer (int ,struct mini_Qdisc*) ;
 int rcu_barrier () ;
 struct mini_Qdisc* rcu_dereference_protected (int ,int) ;

void mini_qdisc_pair_swap(struct mini_Qdisc_pair *miniqp,
     struct tcf_proto *tp_head)
{



 struct mini_Qdisc *miniq_old =
  rcu_dereference_protected(*miniqp->p_miniq, 1);
 struct mini_Qdisc *miniq;

 if (!tp_head) {
  RCU_INIT_POINTER(*miniqp->p_miniq, ((void*)0));

  rcu_barrier();
  return;
 }

 miniq = !miniq_old || miniq_old == &miniqp->miniq2 ?
  &miniqp->miniq1 : &miniqp->miniq2;





 rcu_barrier();
 miniq->filter_list = tp_head;
 rcu_assign_pointer(*miniqp->p_miniq, miniq);

 if (miniq_old)




  call_rcu(&miniq_old->rcu, mini_qdisc_rcu_func);
}
