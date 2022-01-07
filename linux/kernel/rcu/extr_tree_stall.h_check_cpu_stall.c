
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_node {int qsmask; } ;
struct rcu_data {unsigned long grpmask; struct rcu_node* mynode; } ;
struct TYPE_2__ {int jiffies_stall; int gp_seq; int gp_start; } ;


 int DUMP_ALL ;
 unsigned long RCU_STALL_RAT_DELAY ;
 unsigned long READ_ONCE (int ) ;
 scalar_t__ ULONG_CMP_GE (unsigned long,unsigned long) ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 unsigned long cmpxchg (int *,unsigned long,unsigned long) ;
 int jiffies ;
 int print_cpu_stall () ;
 int print_other_cpu_stall (unsigned long) ;
 scalar_t__ rcu_cpu_stall_ftrace_dump ;
 scalar_t__ rcu_cpu_stall_suppress ;
 int rcu_ftrace_dump (int ) ;
 scalar_t__ rcu_gp_in_progress () ;
 int rcu_jiffies_till_stall_check () ;
 int rcu_kick_kthreads ;
 int rcu_stall_kick_kthreads () ;
 TYPE_1__ rcu_state ;
 int smp_rmb () ;

__attribute__((used)) static void check_cpu_stall(struct rcu_data *rdp)
{
 unsigned long gs1;
 unsigned long gs2;
 unsigned long gps;
 unsigned long j;
 unsigned long jn;
 unsigned long js;
 struct rcu_node *rnp;

 if ((rcu_cpu_stall_suppress && !rcu_kick_kthreads) ||
     !rcu_gp_in_progress())
  return;
 rcu_stall_kick_kthreads();
 j = jiffies;
 gs1 = READ_ONCE(rcu_state.gp_seq);
 smp_rmb();
 js = READ_ONCE(rcu_state.jiffies_stall);
 smp_rmb();
 gps = READ_ONCE(rcu_state.gp_start);
 smp_rmb();
 gs2 = READ_ONCE(rcu_state.gp_seq);
 if (gs1 != gs2 ||
     ULONG_CMP_LT(j, js) ||
     ULONG_CMP_GE(gps, js))
  return;
 rnp = rdp->mynode;
 jn = jiffies + 3 * rcu_jiffies_till_stall_check() + 3;
 if (rcu_gp_in_progress() &&
     (READ_ONCE(rnp->qsmask) & rdp->grpmask) &&
     cmpxchg(&rcu_state.jiffies_stall, js, jn) == js) {


  print_cpu_stall();
  if (rcu_cpu_stall_ftrace_dump)
   rcu_ftrace_dump(DUMP_ALL);

 } else if (rcu_gp_in_progress() &&
     ULONG_CMP_GE(j, js + RCU_STALL_RAT_DELAY) &&
     cmpxchg(&rcu_state.jiffies_stall, js, jn) == js) {


  print_other_cpu_stall(gs2);
  if (rcu_cpu_stall_ftrace_dump)
   rcu_ftrace_dump(DUMP_ALL);
 }
}
