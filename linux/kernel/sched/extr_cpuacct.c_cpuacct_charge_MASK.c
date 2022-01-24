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
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct cpuacct {int /*<<< orphan*/  cpuusage; } ;
struct TYPE_2__ {int /*<<< orphan*/ * usages; } ;

/* Variables and functions */
 int CPUACCT_STAT_SYSTEM ; 
 int CPUACCT_STAT_USER ; 
 struct cpuacct* FUNC0 (struct cpuacct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct cpuacct* FUNC3 (struct task_struct*) ; 
 struct pt_regs* FUNC4 (struct task_struct*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pt_regs*) ; 

void FUNC7(struct task_struct *tsk, u64 cputime)
{
	struct cpuacct *ca;
	int index = CPUACCT_STAT_SYSTEM;
	struct pt_regs *regs = FUNC4(tsk);

	if (regs && FUNC6(regs))
		index = CPUACCT_STAT_USER;

	FUNC1();

	for (ca = FUNC3(tsk); ca; ca = FUNC0(ca))
		FUNC5(ca->cpuusage)->usages[index] += cputime;

	FUNC2();
}