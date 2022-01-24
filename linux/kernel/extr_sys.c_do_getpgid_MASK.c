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
struct pid {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ESRCH ; 
 struct task_struct* current ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pid*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct task_struct*) ; 
 struct pid* FUNC5 (struct task_struct*) ; 

__attribute__((used)) static int FUNC6(pid_t pid)
{
	struct task_struct *p;
	struct pid *grp;
	int retval;

	FUNC2();
	if (!pid)
		grp = FUNC5(current);
	else {
		retval = -ESRCH;
		p = FUNC0(pid);
		if (!p)
			goto out;
		grp = FUNC5(p);
		if (!grp)
			goto out;

		retval = FUNC4(p);
		if (retval)
			goto out;
	}
	retval = FUNC1(grp);
out:
	FUNC3();
	return retval;
}