#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pid_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  pid; } ;
struct file {TYPE_1__ f_owner; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ PIDTYPE_PGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

pid_t FUNC3(struct file *filp)
{
	pid_t pid;
	FUNC1(&filp->f_owner.lock);
	pid = FUNC0(filp->f_owner.pid);
	if (filp->f_owner.pid_type == PIDTYPE_PGID)
		pid = -pid;
	FUNC2(&filp->f_owner.lock);
	return pid;
}