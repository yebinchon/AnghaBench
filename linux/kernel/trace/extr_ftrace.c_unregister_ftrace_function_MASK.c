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
struct ftrace_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ftrace_lock ; 
 int FUNC0 (struct ftrace_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ftrace_ops *ops)
{
	int ret;

	FUNC1(&ftrace_lock);
	ret = FUNC0(ops, 0);
	FUNC2(&ftrace_lock);

	return ret;
}