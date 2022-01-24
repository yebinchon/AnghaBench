#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct task_struct {int dummy; } ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  debug_locks ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  rcu_scheduler_active ; 

void FUNC6(const char *file, const int line, const char *s)
{
	struct task_struct *curr = current;

	/* Note: the following can be executed concurrently, so be careful. */
	FUNC2("\n");
	FUNC2("=============================\n");
	FUNC2("WARNING: suspicious RCU usage\n");
	FUNC3();
	FUNC2("-----------------------------\n");
	FUNC2("%s:%d %s!\n", file, line, s);
	FUNC2("\nother info that might help us debug this:\n\n");
	FUNC2("\n%srcu_scheduler_active = %d, debug_locks = %d\n",
	       !FUNC5()
			? "RCU used illegally from offline CPU!\n"
			: !FUNC4()
				? "RCU used illegally from idle CPU!\n"
				: "",
	       rcu_scheduler_active, debug_locks);

	/*
	 * If a CPU is in the RCU-free window in idle (ie: in the section
	 * between rcu_idle_enter() and rcu_idle_exit(), then RCU
	 * considers that CPU to be in an "extended quiescent state",
	 * which means that RCU will be completely ignoring that CPU.
	 * Therefore, rcu_read_lock() and friends have absolutely no
	 * effect on a CPU running in that state. In other words, even if
	 * such an RCU-idle CPU has called rcu_read_lock(), RCU might well
	 * delete data structures out from under it.  RCU really has no
	 * choice here: we need to keep an RCU-free window in idle where
	 * the CPU may possibly enter into low power mode. This way we can
	 * notice an extended quiescent state to other CPUs that started a grace
	 * period. Otherwise we would delay any grace period as long as we run
	 * in the idle task.
	 *
	 * So complain bitterly if someone does call rcu_read_lock(),
	 * rcu_read_lock_bh() and so on from extended quiescent states.
	 */
	if (!FUNC4())
		FUNC2("RCU used illegally from extended quiescent state!\n");

	FUNC1(curr);
	FUNC2("\nstack backtrace:\n");
	FUNC0();
}