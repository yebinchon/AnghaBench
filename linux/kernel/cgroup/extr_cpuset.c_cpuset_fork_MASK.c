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
struct task_struct {int /*<<< orphan*/  mems_allowed; } ;
struct TYPE_2__ {int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  cpus_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpuset_cgrp_id ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct task_struct *task)
{
	if (FUNC1(task, cpuset_cgrp_id))
		return;

	FUNC0(task, current->cpus_ptr);
	task->mems_allowed = current->mems_allowed;
}