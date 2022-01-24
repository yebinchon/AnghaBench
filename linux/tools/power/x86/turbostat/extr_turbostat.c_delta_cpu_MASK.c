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
struct thread_data {int flags; } ;
struct pkg_data {int dummy; } ;
struct core_data {int dummy; } ;

/* Variables and functions */
 int CPU_IS_FIRST_CORE_IN_PACKAGE ; 
 int CPU_IS_FIRST_THREAD_IN_CORE ; 
 int /*<<< orphan*/  FUNC0 (struct core_data*,struct core_data*) ; 
 int FUNC1 (struct pkg_data*,struct pkg_data*) ; 
 int FUNC2 (struct thread_data*,struct thread_data*,struct core_data*) ; 

int FUNC3(struct thread_data *t, struct core_data *c,
	struct pkg_data *p, struct thread_data *t2,
	struct core_data *c2, struct pkg_data *p2)
{
	int retval = 0;

	/* calculate core delta only for 1st thread in core */
	if (t->flags & CPU_IS_FIRST_THREAD_IN_CORE)
		FUNC0(c, c2);

	/* always calculate thread delta */
	retval = FUNC2(t, t2, c2);	/* c2 is core delta */
	if (retval)
		return retval;

	/* calculate package delta only for 1st core in package */
	if (t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE)
		retval = FUNC1(p, p2);

	return retval;
}