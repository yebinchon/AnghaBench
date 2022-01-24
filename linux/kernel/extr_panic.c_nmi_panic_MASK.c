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
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  panic_cpu ; 
 int FUNC3 () ; 

void FUNC4(struct pt_regs *regs, const char *msg)
{
	int old_cpu, cpu;

	cpu = FUNC3();
	old_cpu = FUNC0(&panic_cpu, PANIC_CPU_INVALID, cpu);

	if (old_cpu == PANIC_CPU_INVALID)
		FUNC2("%s", msg);
	else if (old_cpu != cpu)
		FUNC1(regs);
}