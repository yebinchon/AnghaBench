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
 int /*<<< orphan*/  cpuset_cgrp_id ; 
 struct cpuset* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct cpuset *FUNC2(struct task_struct *task)
{
	return FUNC0(FUNC1(task, cpuset_cgrp_id));
}