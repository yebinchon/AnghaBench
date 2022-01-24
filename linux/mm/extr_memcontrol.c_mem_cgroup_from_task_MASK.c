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
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 struct mem_cgroup* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_cgrp_id ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

struct mem_cgroup *FUNC3(struct task_struct *p)
{
	/*
	 * mm_update_next_owner() may clear mm->owner to NULL
	 * if it races with swapoff, page migration, etc.
	 * So this can be called with p == NULL.
	 */
	if (FUNC2(!p))
		return NULL;

	return FUNC0(FUNC1(p, memory_cgrp_id));
}