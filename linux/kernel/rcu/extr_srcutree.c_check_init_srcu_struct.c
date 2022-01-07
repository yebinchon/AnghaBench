
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int srcu_gp_seq_needed; } ;


 int init_srcu_struct_fields (struct srcu_struct*,int) ;
 int rcu_seq_state (int ) ;
 int smp_load_acquire (int *) ;
 int spin_lock_irqsave_rcu_node (struct srcu_struct*,unsigned long) ;
 int spin_unlock_irqrestore_rcu_node (struct srcu_struct*,unsigned long) ;

__attribute__((used)) static void check_init_srcu_struct(struct srcu_struct *ssp)
{
 unsigned long flags;


 if (!rcu_seq_state(smp_load_acquire(&ssp->srcu_gp_seq_needed)))
  return;
 spin_lock_irqsave_rcu_node(ssp, flags);
 if (!rcu_seq_state(ssp->srcu_gp_seq_needed)) {
  spin_unlock_irqrestore_rcu_node(ssp, flags);
  return;
 }
 init_srcu_struct_fields(ssp, 1);
 spin_unlock_irqrestore_rcu_node(ssp, flags);
}
