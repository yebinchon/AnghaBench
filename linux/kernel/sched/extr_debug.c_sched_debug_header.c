
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int version; int release; } ;


 int P (int ) ;
 int PN (int ) ;
 int SEQ_printf (struct seq_file*,char*,...) ;
 TYPE_1__* init_utsname () ;
 int jiffies ;
 int ktime_get () ;
 int ktime_to_ns (int ) ;
 int local_clock () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sched_clock () ;
 int sched_clock_stable () ;
 int * sched_tunable_scaling_names ;
 scalar_t__ strcspn (int ,char*) ;
 int sysctl_sched_child_runs_first ;
 int sysctl_sched_features ;
 int sysctl_sched_latency ;
 int sysctl_sched_min_granularity ;
 size_t sysctl_sched_tunable_scaling ;
 int sysctl_sched_wakeup_granularity ;

__attribute__((used)) static void sched_debug_header(struct seq_file *m)
{
 u64 ktime, sched_clk, cpu_clk;
 unsigned long flags;

 local_irq_save(flags);
 ktime = ktime_to_ns(ktime_get());
 sched_clk = sched_clock();
 cpu_clk = local_clock();
 local_irq_restore(flags);

 SEQ_printf(m, "Sched Debug Version: v0.11, %s %.*s\n",
  init_utsname()->release,
  (int)strcspn(init_utsname()->version, " "),
  init_utsname()->version);





 SEQ_printf(m, "%-40s: %Ld.%06ld\n", "ktime", SPLIT_NS(ktime));
 SEQ_printf(m, "%-40s: %Ld.%06ld\n", "sched_clk", SPLIT_NS(sched_clk));
 SEQ_printf(m, "%-40s: %Ld.%06ld\n", "cpu_clk", SPLIT_NS(cpu_clk));
 SEQ_printf(m, "%-40s: %Ld\n", "jiffies", (long long)(jiffies));






 SEQ_printf(m, "\n");
 SEQ_printf(m, "sysctl_sched\n");





 SEQ_printf(m, "  .%-40s: %Ld.%06ld\n", "sysctl_sched_latency", SPLIT_NS(sysctl_sched_latency));
 SEQ_printf(m, "  .%-40s: %Ld.%06ld\n", "sysctl_sched_min_granularity", SPLIT_NS(sysctl_sched_min_granularity));
 SEQ_printf(m, "  .%-40s: %Ld.%06ld\n", "sysctl_sched_wakeup_granularity", SPLIT_NS(sysctl_sched_wakeup_granularity));
 SEQ_printf(m, "  .%-40s: %Ld\n", "sysctl_sched_child_runs_first", (long long)(sysctl_sched_child_runs_first));
 SEQ_printf(m, "  .%-40s: %Ld\n", "sysctl_sched_features", (long long)(sysctl_sched_features));



 SEQ_printf(m, "  .%-40s: %d (%s)\n",
  "sysctl_sched_tunable_scaling",
  sysctl_sched_tunable_scaling,
  sched_tunable_scaling_names[sysctl_sched_tunable_scaling]);
 SEQ_printf(m, "\n");
}
