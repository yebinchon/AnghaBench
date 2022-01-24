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
struct flock {scalar_t__ l_type; scalar_t__ l_pid; } ;
struct file_lock {scalar_t__ fl_type; struct file* fl_owner; int /*<<< orphan*/  fl_flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FL_OFDLCK ; 
 unsigned int F_GETLK ; 
 unsigned int F_OFD_GETLK ; 
 scalar_t__ F_RDLCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 int FUNC0 (struct file*,struct file_lock*,struct flock*) ; 
 struct file_lock* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*) ; 
 int FUNC3 (struct flock*,struct file_lock*) ; 
 int FUNC4 (struct file*,struct file_lock*) ; 

int FUNC5(struct file *filp, unsigned int cmd, struct flock *flock)
{
	struct file_lock *fl;
	int error;

	fl = FUNC1();
	if (fl == NULL)
		return -ENOMEM;
	error = -EINVAL;
	if (flock->l_type != F_RDLCK && flock->l_type != F_WRLCK)
		goto out;

	error = FUNC0(filp, fl, flock);
	if (error)
		goto out;

	if (cmd == F_OFD_GETLK) {
		error = -EINVAL;
		if (flock->l_pid != 0)
			goto out;

		cmd = F_GETLK;
		fl->fl_flags |= FL_OFDLCK;
		fl->fl_owner = filp;
	}

	error = FUNC4(filp, fl);
	if (error)
		goto out;

	flock->l_type = fl->fl_type;
	if (fl->fl_type != F_UNLCK) {
		error = FUNC3(flock, fl);
		if (error)
			goto out;
	}
out:
	FUNC2(fl);
	return error;
}