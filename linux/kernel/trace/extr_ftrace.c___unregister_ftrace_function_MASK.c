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
struct ftrace_ops {int flags; int /*<<< orphan*/  saved_func; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int EBUSY ; 
 int FTRACE_OPS_FL_ENABLED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ ftrace_enabled ; 
 int /*<<< orphan*/  ftrace_ops_list ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ftrace_ops*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct ftrace_ops *ops)
{
	int ret;

	if (FUNC0(!(ops->flags & FTRACE_OPS_FL_ENABLED)))
		return -EBUSY;

	ret = FUNC1(&ftrace_ops_list, ops);

	if (ret < 0)
		return ret;

	if (ftrace_enabled)
		FUNC2();

	ops->func = ops->saved_func;

	return 0;
}