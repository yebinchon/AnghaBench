#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * sched_tunable_scaling_names ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sysctl_sched_child_runs_first ; 
 int /*<<< orphan*/  sysctl_sched_features ; 
 int /*<<< orphan*/  sysctl_sched_latency ; 
 int /*<<< orphan*/  sysctl_sched_min_granularity ; 
 size_t sysctl_sched_tunable_scaling ; 
 int /*<<< orphan*/  sysctl_sched_wakeup_granularity ; 

__attribute__((used)) static void FUNC12(struct seq_file *m)
{
	u64 ktime, sched_clk, cpu_clk;
	unsigned long flags;

	FUNC8(flags);
	ktime = FUNC5(FUNC4());
	sched_clk = FUNC9();
	cpu_clk = FUNC6();
	FUNC7(flags);

	FUNC2(m, "Sched Debug Version: v0.11, %s %.*s\n",
		FUNC3()->release,
		(int)FUNC11(FUNC3()->version, " "),
		FUNC3()->version);

#define P(x) \
	SEQ_printf(m, "%-40s: %Ld\n", #x, (long long)(x))
#define PN(x) \
	SEQ_printf(m, "%-40s: %Ld.%06ld\n", #x, SPLIT_NS(x))
	PN(ktime);
	PN(sched_clk);
	PN(cpu_clk);
	P(jiffies);
#ifdef CONFIG_HAVE_UNSTABLE_SCHED_CLOCK
	P(sched_clock_stable());
#endif
#undef PN
#undef P

	FUNC2(m, "\n");
	FUNC2(m, "sysctl_sched\n");

#define P(x) \
	SEQ_printf(m, "  .%-40s: %Ld\n", #x, (long long)(x))
#define PN(x) \
	SEQ_printf(m, "  .%-40s: %Ld.%06ld\n", #x, SPLIT_NS(x))
	PN(sysctl_sched_latency);
	PN(sysctl_sched_min_granularity);
	PN(sysctl_sched_wakeup_granularity);
	P(sysctl_sched_child_runs_first);
	P(sysctl_sched_features);
#undef PN
#undef P

	FUNC2(m, "  .%-40s: %d (%s)\n",
		"sysctl_sched_tunable_scaling",
		sysctl_sched_tunable_scaling,
		sched_tunable_scaling_names[sysctl_sched_tunable_scaling]);
	FUNC2(m, "\n");
}