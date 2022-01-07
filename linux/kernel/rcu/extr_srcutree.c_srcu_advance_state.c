
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int srcu_idx; int srcu_gp_mutex; int srcu_gp_seq; int srcu_gp_seq_needed; } ;


 int READ_ONCE (int ) ;
 int SRCU_STATE_IDLE ;
 int SRCU_STATE_SCAN1 ;
 int SRCU_STATE_SCAN2 ;
 scalar_t__ ULONG_CMP_GE (int ,int ) ;
 int WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_seq_set_state (int *,int) ;
 int rcu_seq_state (int ) ;
 int smp_load_acquire (int *) ;
 int spin_lock_irq_rcu_node (struct srcu_struct*) ;
 int spin_unlock_irq_rcu_node (struct srcu_struct*) ;
 int srcu_flip (struct srcu_struct*) ;
 int srcu_gp_end (struct srcu_struct*) ;
 int srcu_gp_start (struct srcu_struct*) ;
 int try_check_zero (struct srcu_struct*,int,int) ;

__attribute__((used)) static void srcu_advance_state(struct srcu_struct *ssp)
{
 int idx;

 mutex_lock(&ssp->srcu_gp_mutex);
 idx = rcu_seq_state(smp_load_acquire(&ssp->srcu_gp_seq));
 if (idx == SRCU_STATE_IDLE) {
  spin_lock_irq_rcu_node(ssp);
  if (ULONG_CMP_GE(ssp->srcu_gp_seq, ssp->srcu_gp_seq_needed)) {
   WARN_ON_ONCE(rcu_seq_state(ssp->srcu_gp_seq));
   spin_unlock_irq_rcu_node(ssp);
   mutex_unlock(&ssp->srcu_gp_mutex);
   return;
  }
  idx = rcu_seq_state(READ_ONCE(ssp->srcu_gp_seq));
  if (idx == SRCU_STATE_IDLE)
   srcu_gp_start(ssp);
  spin_unlock_irq_rcu_node(ssp);
  if (idx != SRCU_STATE_IDLE) {
   mutex_unlock(&ssp->srcu_gp_mutex);
   return;
  }
 }

 if (rcu_seq_state(READ_ONCE(ssp->srcu_gp_seq)) == SRCU_STATE_SCAN1) {
  idx = 1 ^ (ssp->srcu_idx & 1);
  if (!try_check_zero(ssp, idx, 1)) {
   mutex_unlock(&ssp->srcu_gp_mutex);
   return;
  }
  srcu_flip(ssp);
  rcu_seq_set_state(&ssp->srcu_gp_seq, SRCU_STATE_SCAN2);
 }

 if (rcu_seq_state(READ_ONCE(ssp->srcu_gp_seq)) == SRCU_STATE_SCAN2) {





  idx = 1 ^ (ssp->srcu_idx & 1);
  if (!try_check_zero(ssp, idx, 2)) {
   mutex_unlock(&ssp->srcu_gp_mutex);
   return;
  }
  srcu_gp_end(ssp);
 }
}
