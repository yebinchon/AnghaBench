
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int srcu_gp_seq; int sda; } ;
struct srcu_data {unsigned long srcu_gp_seq_needed; unsigned long srcu_gp_seq_needed_exp; int mynode; int srcu_cblist; } ;
struct rcu_head {int func; } ;
typedef int rcu_callback_t ;


 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int WARN_ONCE (int,char*) ;
 int WRITE_ONCE (int ,int ) ;
 int check_init_srcu_struct (struct srcu_struct*) ;
 scalar_t__ debug_rcu_head_queue (struct rcu_head*) ;
 int local_irq_save (unsigned long) ;
 int rcu_segcblist_accelerate (int *,unsigned long) ;
 int rcu_segcblist_advance (int *,int ) ;
 int rcu_segcblist_enqueue (int *,struct rcu_head*,int) ;
 int rcu_seq_current (int *) ;
 unsigned long rcu_seq_snap (int *) ;
 int spin_lock_rcu_node (struct srcu_data*) ;
 int spin_unlock_irqrestore_rcu_node (struct srcu_data*,unsigned long) ;
 int srcu_funnel_exp_start (struct srcu_struct*,int ,unsigned long) ;
 int srcu_funnel_gp_start (struct srcu_struct*,struct srcu_data*,unsigned long,int) ;
 int srcu_leak_callback ;
 int srcu_read_lock (struct srcu_struct*) ;
 int srcu_read_unlock (struct srcu_struct*,int) ;
 struct srcu_data* this_cpu_ptr (int ) ;

__attribute__((used)) static void __call_srcu(struct srcu_struct *ssp, struct rcu_head *rhp,
   rcu_callback_t func, bool do_norm)
{
 unsigned long flags;
 int idx;
 bool needexp = 0;
 bool needgp = 0;
 unsigned long s;
 struct srcu_data *sdp;

 check_init_srcu_struct(ssp);
 if (debug_rcu_head_queue(rhp)) {

  WRITE_ONCE(rhp->func, srcu_leak_callback);
  WARN_ONCE(1, "call_srcu(): Leaked duplicate callback\n");
  return;
 }
 rhp->func = func;
 idx = srcu_read_lock(ssp);
 local_irq_save(flags);
 sdp = this_cpu_ptr(ssp->sda);
 spin_lock_rcu_node(sdp);
 rcu_segcblist_enqueue(&sdp->srcu_cblist, rhp, 0);
 rcu_segcblist_advance(&sdp->srcu_cblist,
         rcu_seq_current(&ssp->srcu_gp_seq));
 s = rcu_seq_snap(&ssp->srcu_gp_seq);
 (void)rcu_segcblist_accelerate(&sdp->srcu_cblist, s);
 if (ULONG_CMP_LT(sdp->srcu_gp_seq_needed, s)) {
  sdp->srcu_gp_seq_needed = s;
  needgp = 1;
 }
 if (!do_norm && ULONG_CMP_LT(sdp->srcu_gp_seq_needed_exp, s)) {
  sdp->srcu_gp_seq_needed_exp = s;
  needexp = 1;
 }
 spin_unlock_irqrestore_rcu_node(sdp, flags);
 if (needgp)
  srcu_funnel_gp_start(ssp, sdp, s, do_norm);
 else if (needexp)
  srcu_funnel_exp_start(ssp, sdp->mynode, s);
 srcu_read_unlock(ssp, idx);
}
