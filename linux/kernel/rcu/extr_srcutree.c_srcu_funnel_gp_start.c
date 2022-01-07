
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
struct TYPE_4__ {TYPE_1__ work; } ;
struct srcu_struct {unsigned long* srcu_have_cbs; unsigned long srcu_gp_seq; unsigned long srcu_gp_seq_needed_exp; unsigned long srcu_gp_seq_needed; TYPE_2__ work; int * srcu_data_have_cbs; struct srcu_struct* srcu_parent; } ;
struct srcu_node {unsigned long* srcu_have_cbs; unsigned long srcu_gp_seq; unsigned long srcu_gp_seq_needed_exp; unsigned long srcu_gp_seq_needed; TYPE_2__ work; int * srcu_data_have_cbs; struct srcu_node* srcu_parent; } ;
struct srcu_data {int grpmask; struct srcu_struct* mynode; } ;


 int ARRAY_SIZE (unsigned long*) ;
 int SRCU_INTERVAL ;
 scalar_t__ SRCU_STATE_IDLE ;
 scalar_t__ ULONG_CMP_GE (unsigned long,unsigned long) ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int WARN_ON_ONCE (scalar_t__) ;
 scalar_t__ likely (int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int queue_delayed_work (int ,TYPE_2__*,int ) ;
 int rcu_gp_wq ;
 int rcu_seq_ctr (unsigned long) ;
 scalar_t__ rcu_seq_done (unsigned long*,unsigned long) ;
 scalar_t__ rcu_seq_state (unsigned long) ;
 int smp_store_release (unsigned long*,unsigned long) ;
 int spin_lock_irqsave_rcu_node (struct srcu_struct*,unsigned long) ;
 int spin_unlock_irqrestore_rcu_node (struct srcu_struct*,unsigned long) ;
 int srcu_boot_list ;
 int srcu_funnel_exp_start (struct srcu_struct*,struct srcu_struct*,unsigned long) ;
 int srcu_get_delay (struct srcu_struct*) ;
 int srcu_gp_start (struct srcu_struct*) ;
 int srcu_init_done ;
 int srcu_schedule_cbs_sdp (struct srcu_data*,int ) ;

__attribute__((used)) static void srcu_funnel_gp_start(struct srcu_struct *ssp, struct srcu_data *sdp,
     unsigned long s, bool do_norm)
{
 unsigned long flags;
 int idx = rcu_seq_ctr(s) % ARRAY_SIZE(sdp->mynode->srcu_have_cbs);
 struct srcu_node *snp = sdp->mynode;
 unsigned long snp_seq;


 for (; snp != ((void*)0); snp = snp->srcu_parent) {
  if (rcu_seq_done(&ssp->srcu_gp_seq, s) && snp != sdp->mynode)
   return;
  spin_lock_irqsave_rcu_node(snp, flags);
  if (ULONG_CMP_GE(snp->srcu_have_cbs[idx], s)) {
   snp_seq = snp->srcu_have_cbs[idx];
   if (snp == sdp->mynode && snp_seq == s)
    snp->srcu_data_have_cbs[idx] |= sdp->grpmask;
   spin_unlock_irqrestore_rcu_node(snp, flags);
   if (snp == sdp->mynode && snp_seq != s) {
    srcu_schedule_cbs_sdp(sdp, do_norm
          ? SRCU_INTERVAL
          : 0);
    return;
   }
   if (!do_norm)
    srcu_funnel_exp_start(ssp, snp, s);
   return;
  }
  snp->srcu_have_cbs[idx] = s;
  if (snp == sdp->mynode)
   snp->srcu_data_have_cbs[idx] |= sdp->grpmask;
  if (!do_norm && ULONG_CMP_LT(snp->srcu_gp_seq_needed_exp, s))
   snp->srcu_gp_seq_needed_exp = s;
  spin_unlock_irqrestore_rcu_node(snp, flags);
 }


 spin_lock_irqsave_rcu_node(ssp, flags);
 if (ULONG_CMP_LT(ssp->srcu_gp_seq_needed, s)) {




  smp_store_release(&ssp->srcu_gp_seq_needed, s);
 }
 if (!do_norm && ULONG_CMP_LT(ssp->srcu_gp_seq_needed_exp, s))
  ssp->srcu_gp_seq_needed_exp = s;


 if (!rcu_seq_done(&ssp->srcu_gp_seq, s) &&
     rcu_seq_state(ssp->srcu_gp_seq) == SRCU_STATE_IDLE) {
  WARN_ON_ONCE(ULONG_CMP_GE(ssp->srcu_gp_seq, ssp->srcu_gp_seq_needed));
  srcu_gp_start(ssp);
  if (likely(srcu_init_done))
   queue_delayed_work(rcu_gp_wq, &ssp->work,
        srcu_get_delay(ssp));
  else if (list_empty(&ssp->work.work.entry))
   list_add(&ssp->work.work.entry, &srcu_boot_list);
 }
 spin_unlock_irqrestore_rcu_node(ssp, flags);
}
