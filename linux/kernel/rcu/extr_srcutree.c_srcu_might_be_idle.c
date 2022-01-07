
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {scalar_t__ srcu_last_gp_end; int srcu_gp_seq; int srcu_gp_seq_needed; int sda; } ;
struct srcu_data {int srcu_cblist; } ;


 int READ_ONCE (int ) ;
 scalar_t__ ULONG_CMP_LT (unsigned long,int ) ;
 scalar_t__ exp_holdoff ;
 unsigned long ktime_get_mono_fast_ns () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ rcu_segcblist_pend_cbs (int *) ;
 unsigned long rcu_seq_current (int *) ;
 int smp_mb () ;
 struct srcu_data* this_cpu_ptr (int ) ;
 scalar_t__ time_in_range_open (unsigned long,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool srcu_might_be_idle(struct srcu_struct *ssp)
{
 unsigned long curseq;
 unsigned long flags;
 struct srcu_data *sdp;
 unsigned long t;


 local_irq_save(flags);
 sdp = this_cpu_ptr(ssp->sda);
 if (rcu_segcblist_pend_cbs(&sdp->srcu_cblist)) {
  local_irq_restore(flags);
  return 0;
 }
 local_irq_restore(flags);
 t = ktime_get_mono_fast_ns();
 if (exp_holdoff == 0 ||
     time_in_range_open(t, ssp->srcu_last_gp_end,
          ssp->srcu_last_gp_end + exp_holdoff))
  return 0;


 curseq = rcu_seq_current(&ssp->srcu_gp_seq);
 smp_mb();
 if (ULONG_CMP_LT(curseq, READ_ONCE(ssp->srcu_gp_seq_needed)))
  return 0;
 smp_mb();
 if (curseq != rcu_seq_current(&ssp->srcu_gp_seq))
  return 0;
 return 1;
}
