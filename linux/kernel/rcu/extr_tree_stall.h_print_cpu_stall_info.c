
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rcu_data {unsigned long ticks_this_gp; int grpmask; int softirq_snap; int dynticks_nmi_nesting; int dynticks_nesting; scalar_t__ rcu_iw_pending; TYPE_1__* mynode; scalar_t__ rcu_iw_gp_seq; scalar_t__ gp_seq; } ;
struct TYPE_4__ {scalar_t__ n_force_qs_gpstart; int n_force_qs; scalar_t__ gp_seq; } ;
struct TYPE_3__ {int qsmaskinit; int qsmaskinitnext; scalar_t__ gp_seq; } ;


 int CONFIG_IRQ_WORK ;
 int IS_ENABLED (int ) ;
 int RCU_SOFTIRQ ;
 scalar_t__ READ_ONCE (int ) ;
 int cpu_online (int) ;
 int kstat_softirqs_cpu (int ,int) ;
 scalar_t__ min (unsigned long,unsigned long) ;
 struct rcu_data* per_cpu_ptr (int *,int) ;
 int pr_err (char*,int,char,char,char,char,unsigned long,char*,int,int ,int ,int ,int ,scalar_t__,char*) ;
 int print_cpu_stall_fast_no_hz (char*,int) ;
 int rcu_data ;
 int rcu_dynticks_snap (struct rcu_data*) ;
 unsigned long rcu_seq_ctr (scalar_t__) ;
 TYPE_2__ rcu_state ;
 int touch_nmi_watchdog () ;

__attribute__((used)) static void print_cpu_stall_info(int cpu)
{
 unsigned long delta;
 char fast_no_hz[72];
 struct rcu_data *rdp = per_cpu_ptr(&rcu_data, cpu);
 char *ticks_title;
 unsigned long ticks_value;





 touch_nmi_watchdog();

 ticks_value = rcu_seq_ctr(rcu_state.gp_seq - rdp->gp_seq);
 if (ticks_value) {
  ticks_title = "GPs behind";
 } else {
  ticks_title = "ticks this GP";
  ticks_value = rdp->ticks_this_gp;
 }
 print_cpu_stall_fast_no_hz(fast_no_hz, cpu);
 delta = rcu_seq_ctr(rdp->mynode->gp_seq - rdp->rcu_iw_gp_seq);
 pr_err("\t%d-%c%c%c%c: (%lu %s) idle=%03x/%ld/%#lx softirq=%u/%u fqs=%ld %s\n",
        cpu,
        "O."[!!cpu_online(cpu)],
        "o."[!!(rdp->grpmask & rdp->mynode->qsmaskinit)],
        "N."[!!(rdp->grpmask & rdp->mynode->qsmaskinitnext)],
        !IS_ENABLED(CONFIG_IRQ_WORK) ? '?' :
   rdp->rcu_iw_pending ? (int)min(delta, 9UL) + '0' :
    "!."[!delta],
        ticks_value, ticks_title,
        rcu_dynticks_snap(rdp) & 0xfff,
        rdp->dynticks_nesting, rdp->dynticks_nmi_nesting,
        rdp->softirq_snap, kstat_softirqs_cpu(RCU_SOFTIRQ, cpu),
        READ_ONCE(rcu_state.n_force_qs) - rcu_state.n_force_qs_gpstart,
        fast_no_hz);
}
