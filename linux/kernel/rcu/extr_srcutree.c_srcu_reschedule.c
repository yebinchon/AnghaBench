
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int work; int srcu_gp_seq; int srcu_gp_seq_needed; } ;


 scalar_t__ ULONG_CMP_GE (int ,int ) ;
 int WARN_ON_ONCE (int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int rcu_gp_wq ;
 int rcu_seq_state (int ) ;
 int spin_lock_irq_rcu_node (struct srcu_struct*) ;
 int spin_unlock_irq_rcu_node (struct srcu_struct*) ;
 int srcu_gp_start (struct srcu_struct*) ;

__attribute__((used)) static void srcu_reschedule(struct srcu_struct *ssp, unsigned long delay)
{
 bool pushgp = 1;

 spin_lock_irq_rcu_node(ssp);
 if (ULONG_CMP_GE(ssp->srcu_gp_seq, ssp->srcu_gp_seq_needed)) {
  if (!WARN_ON_ONCE(rcu_seq_state(ssp->srcu_gp_seq))) {

   pushgp = 0;
  }
 } else if (!rcu_seq_state(ssp->srcu_gp_seq)) {

  srcu_gp_start(ssp);
 }
 spin_unlock_irq_rcu_node(ssp);

 if (pushgp)
  queue_delayed_work(rcu_gp_wq, &ssp->work, delay);
}
