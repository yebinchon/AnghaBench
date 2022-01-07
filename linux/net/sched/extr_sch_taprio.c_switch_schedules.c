
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {int admin_sched; int oper_sched; } ;
struct sched_gate_list {int rcu; } ;


 int call_rcu (int *,int ) ;
 int rcu_assign_pointer (int ,struct sched_gate_list*) ;
 int taprio_free_sched_cb ;

__attribute__((used)) static void switch_schedules(struct taprio_sched *q,
        struct sched_gate_list **admin,
        struct sched_gate_list **oper)
{
 rcu_assign_pointer(q->oper_sched, *admin);
 rcu_assign_pointer(q->admin_sched, ((void*)0));

 if (*oper)
  call_rcu(&(*oper)->rcu, taprio_free_sched_cb);

 *oper = *admin;
 *admin = ((void*)0);
}
