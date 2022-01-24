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

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct task_struct* FUNC4 (int (*) (void*),void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

int FUNC6(int (*fn)(void *arg), void *arg, char *s, char *m,
			    char *f, struct task_struct **tp)
{
	int ret = 0;

	FUNC3(m);
	*tp = FUNC4(fn, arg, "%s", s);
	if (FUNC0(*tp)) {
		ret = FUNC1(*tp);
		FUNC2(f);
		*tp = NULL;
	}
	FUNC5(*tp);
	return ret;
}