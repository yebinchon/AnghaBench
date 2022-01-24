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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int CGROUP_FREEZING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (struct task_struct*) ; 

bool FUNC3(struct task_struct *task)
{
	bool ret;

	FUNC0();
	ret = FUNC2(task)->state & CGROUP_FREEZING;
	FUNC1();

	return ret;
}