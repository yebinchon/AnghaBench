
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {int current_entry_lock; int admin_sched; int oper_sched; } ;
struct sched_gate_list {int dummy; } ;


 int lockdep_is_held (int *) ;
 struct sched_gate_list* rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int switch_schedules (struct taprio_sched*,struct sched_gate_list**,struct sched_gate_list**) ;

__attribute__((used)) static void taprio_offload_config_changed(struct taprio_sched *q)
{
 struct sched_gate_list *oper, *admin;

 spin_lock(&q->current_entry_lock);

 oper = rcu_dereference_protected(q->oper_sched,
      lockdep_is_held(&q->current_entry_lock));
 admin = rcu_dereference_protected(q->admin_sched,
       lockdep_is_held(&q->current_entry_lock));

 switch_schedules(q, &admin, &oper);

 spin_unlock(&q->current_entry_lock);
}
