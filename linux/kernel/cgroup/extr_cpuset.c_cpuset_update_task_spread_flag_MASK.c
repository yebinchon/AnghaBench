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
struct cpuset {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cpuset*) ; 
 scalar_t__ FUNC1 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

__attribute__((used)) static void FUNC6(struct cpuset *cs,
					struct task_struct *tsk)
{
	if (FUNC0(cs))
		FUNC4(tsk);
	else
		FUNC2(tsk);

	if (FUNC1(cs))
		FUNC5(tsk);
	else
		FUNC3(tsk);
}