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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int PANIC_CPU_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  panic_cpu ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 

void FUNC5(struct pt_regs *regs)
{
	int old_cpu, this_cpu;

	/*
	 * Only one CPU is allowed to execute the crash_kexec() code as with
	 * panic().  Otherwise parallel calls of panic() and crash_kexec()
	 * may stop each other.  To exclude them, we use panic_cpu here too.
	 */
	this_cpu = FUNC4();
	old_cpu = FUNC1(&panic_cpu, PANIC_CPU_INVALID, this_cpu);
	if (old_cpu == PANIC_CPU_INVALID) {
		/* This is the 1st CPU which comes here, so go ahead. */
		FUNC3();
		FUNC0(regs);

		/*
		 * Reset panic_cpu to allow another panic()/crash_kexec()
		 * call.
		 */
		FUNC2(&panic_cpu, PANIC_CPU_INVALID);
	}
}