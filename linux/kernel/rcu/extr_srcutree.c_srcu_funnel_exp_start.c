
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {unsigned long srcu_gp_seq_needed_exp; int srcu_gp_seq; struct srcu_struct* srcu_parent; } ;
struct srcu_node {unsigned long srcu_gp_seq_needed_exp; int srcu_gp_seq; struct srcu_node* srcu_parent; } ;


 unsigned long READ_ONCE (unsigned long) ;
 scalar_t__ ULONG_CMP_GE (unsigned long,unsigned long) ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int WRITE_ONCE (unsigned long,unsigned long) ;
 scalar_t__ rcu_seq_done (int *,unsigned long) ;
 int spin_lock_irqsave_rcu_node (struct srcu_struct*,unsigned long) ;
 int spin_unlock_irqrestore_rcu_node (struct srcu_struct*,unsigned long) ;

__attribute__((used)) static void srcu_funnel_exp_start(struct srcu_struct *ssp, struct srcu_node *snp,
      unsigned long s)
{
 unsigned long flags;

 for (; snp != ((void*)0); snp = snp->srcu_parent) {
  if (rcu_seq_done(&ssp->srcu_gp_seq, s) ||
      ULONG_CMP_GE(READ_ONCE(snp->srcu_gp_seq_needed_exp), s))
   return;
  spin_lock_irqsave_rcu_node(snp, flags);
  if (ULONG_CMP_GE(snp->srcu_gp_seq_needed_exp, s)) {
   spin_unlock_irqrestore_rcu_node(snp, flags);
   return;
  }
  WRITE_ONCE(snp->srcu_gp_seq_needed_exp, s);
  spin_unlock_irqrestore_rcu_node(snp, flags);
 }
 spin_lock_irqsave_rcu_node(ssp, flags);
 if (ULONG_CMP_LT(ssp->srcu_gp_seq_needed_exp, s))
  ssp->srcu_gp_seq_needed_exp = s;
 spin_unlock_irqrestore_rcu_node(ssp, flags);
}
