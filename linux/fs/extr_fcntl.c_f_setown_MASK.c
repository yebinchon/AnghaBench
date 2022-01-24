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
struct pid {int dummy; } ;
struct file {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int INT_MIN ; 
 int PIDTYPE_PGID ; 
 int PIDTYPE_TGID ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct pid*,int,int) ; 
 struct pid* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct file *filp, unsigned long arg, int force)
{
	enum pid_type type;
	struct pid *pid = NULL;
	int who = arg, ret = 0;

	type = PIDTYPE_TGID;
	if (who < 0) {
		/* avoid overflow below */
		if (who == INT_MIN)
			return -EINVAL;

		type = PIDTYPE_PGID;
		who = -who;
	}

	FUNC2();
	if (who) {
		pid = FUNC1(who);
		if (!pid)
			ret = -ESRCH;
	}

	if (!ret)
		FUNC0(filp, pid, type, force);
	FUNC3();

	return ret;
}