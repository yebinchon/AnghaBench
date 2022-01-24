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
 int EACCES ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int) ; 
 int FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *p, int niceval, int error)
{
	int no_nice;

	if (!FUNC2(p)) {
		error = -EPERM;
		goto out;
	}
	if (niceval < FUNC4(p) && !FUNC0(p, niceval)) {
		error = -EACCES;
		goto out;
	}
	no_nice = FUNC1(p, niceval);
	if (no_nice) {
		error = no_nice;
		goto out;
	}
	if (error == -ESRCH)
		error = 0;
	FUNC3(p, niceval);
out:
	return error;
}