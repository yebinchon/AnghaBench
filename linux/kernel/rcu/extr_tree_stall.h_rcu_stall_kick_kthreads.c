
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jiffies_kick_kthreads; scalar_t__ gp_kthread; int name; int gp_flags; } ;


 int DUMP_ALL ;
 scalar_t__ HZ ;
 unsigned long READ_ONCE (int ) ;
 int WARN_ONCE (int,char*,int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;
 int jiffies ;
 int rcu_ftrace_dump (int ) ;
 scalar_t__ rcu_gp_in_progress () ;
 int rcu_kick_kthreads ;
 TYPE_1__ rcu_state ;
 scalar_t__ time_after (int ,unsigned long) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void rcu_stall_kick_kthreads(void)
{
 unsigned long j;

 if (!rcu_kick_kthreads)
  return;
 j = READ_ONCE(rcu_state.jiffies_kick_kthreads);
 if (time_after(jiffies, j) && rcu_state.gp_kthread &&
     (rcu_gp_in_progress() || READ_ONCE(rcu_state.gp_flags))) {
  WARN_ONCE(1, "Kicking %s grace-period kthread\n",
     rcu_state.name);
  rcu_ftrace_dump(DUMP_ALL);
  wake_up_process(rcu_state.gp_kthread);
  WRITE_ONCE(rcu_state.jiffies_kick_kthreads, j + HZ);
 }
}
