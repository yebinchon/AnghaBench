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
struct cgroup_cls_state {int dummy; } ;

/* Variables and functions */
 struct cgroup_cls_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_cls_cgrp_id ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct cgroup_cls_state *FUNC3(struct task_struct *p)
{
	return FUNC0(FUNC2(p, net_cls_cgrp_id,
					    FUNC1()));
}