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
struct cpuacct {int /*<<< orphan*/  cpustat; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cpustat; } ;

/* Variables and functions */
 struct cpuacct* FUNC0 (struct cpuacct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct cpuacct root_cpuacct ; 
 struct cpuacct* FUNC3 (struct task_struct*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct task_struct *tsk, int index, u64 val)
{
	struct cpuacct *ca;

	FUNC1();
	for (ca = FUNC3(tsk); ca != &root_cpuacct; ca = FUNC0(ca))
		FUNC4(ca->cpustat)->cpustat[index] += val;
	FUNC2();
}