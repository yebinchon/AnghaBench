#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct flock {int /*<<< orphan*/  l_pid; } ;
struct file_lock {int fl_flags; scalar_t__ fl_type; struct file* fl_owner; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {int /*<<< orphan*/  file_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int EINVAL ; 
 int ENOLCK ; 
 int FL_OFDLCK ; 
 int FL_SLEEP ; 
#define  F_OFD_SETLK 130 
#define  F_OFD_SETLKW 129 
 unsigned int F_SETLK ; 
#define  F_SETLKW 128 
 scalar_t__ F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct file_lock*) ; 
 TYPE_2__* current ; 
 int FUNC2 (struct file*,unsigned int,struct file_lock*) ; 
 struct file* FUNC3 (unsigned int) ; 
 int FUNC4 (struct file*,struct file_lock*,struct flock*) ; 
 struct file_lock* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct file_lock*) ; 
 struct inode* FUNC7 (struct file*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct file_lock*,int) ; 

int FUNC13(unsigned int fd, struct file *filp, unsigned int cmd,
		struct flock *flock)
{
	struct file_lock *file_lock = FUNC5();
	struct inode *inode = FUNC7(filp);
	struct file *f;
	int error;

	if (file_lock == NULL)
		return -ENOLCK;

	/* Don't allow mandatory locks on files that may be memory mapped
	 * and shared.
	 */
	if (FUNC8(inode) && FUNC9(filp->f_mapping)) {
		error = -EAGAIN;
		goto out;
	}

	error = FUNC4(filp, file_lock, flock);
	if (error)
		goto out;

	error = FUNC1(file_lock);
	if (error)
		goto out;

	/*
	 * If the cmd is requesting file-private locks, then set the
	 * FL_OFDLCK flag and override the owner.
	 */
	switch (cmd) {
	case F_OFD_SETLK:
		error = -EINVAL;
		if (flock->l_pid != 0)
			goto out;

		cmd = F_SETLK;
		file_lock->fl_flags |= FL_OFDLCK;
		file_lock->fl_owner = filp;
		break;
	case F_OFD_SETLKW:
		error = -EINVAL;
		if (flock->l_pid != 0)
			goto out;

		cmd = F_SETLKW;
		file_lock->fl_flags |= FL_OFDLCK;
		file_lock->fl_owner = filp;
		/* Fallthrough */
	case F_SETLKW:
		file_lock->fl_flags |= FL_SLEEP;
	}

	error = FUNC2(filp, cmd, file_lock);

	/*
	 * Attempt to detect a close/fcntl race and recover by releasing the
	 * lock that was just acquired. There is no need to do that when we're
	 * unlocking though, or for OFD locks.
	 */
	if (!error && file_lock->fl_type != F_UNLCK &&
	    !(file_lock->fl_flags & FL_OFDLCK)) {
		/*
		 * We need that spin_lock here - it prevents reordering between
		 * update of i_flctx->flc_posix and check for it done in
		 * close(). rcu_read_lock() wouldn't do.
		 */
		FUNC10(&current->files->file_lock);
		f = FUNC3(fd);
		FUNC11(&current->files->file_lock);
		if (f != filp) {
			file_lock->fl_type = F_UNLCK;
			error = FUNC2(filp, cmd, file_lock);
			FUNC0(error);
			error = -EBADF;
		}
	}
out:
	FUNC12(inode, file_lock, error);
	FUNC6(file_lock);
	return error;
}