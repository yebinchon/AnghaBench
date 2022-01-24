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
struct ocfs2_lock_res {int l_flags; scalar_t__ l_level; } ;
struct ocfs2_file_private {int /*<<< orphan*/  fp_mutex; struct ocfs2_lock_res fp_flock; } ;
struct inode {int dummy; } ;
struct file_lock {scalar_t__ fl_type; int /*<<< orphan*/  fl_flags; } ;
struct file {struct ocfs2_file_private* private_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FL_FLOCK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LKM_EXMODE ; 
 scalar_t__ LKM_NLMODE ; 
 int OCFS2_LOCK_ATTACHED ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 
 int FUNC2 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct file*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct inode *inode,
			  int cmd, struct file_lock *fl)
{
	int ret = 0, level = 0, trylock = 0;
	struct ocfs2_file_private *fp = file->private_data;
	struct ocfs2_lock_res *lockres = &fp->fp_flock;

	if (fl->fl_type == F_WRLCK)
		level = 1;
	if (!FUNC0(cmd))
		trylock = 1;

	FUNC4(&fp->fp_mutex);

	if (lockres->l_flags & OCFS2_LOCK_ATTACHED &&
	    lockres->l_level > LKM_NLMODE) {
		int old_level = 0;
		struct file_lock request;

		if (lockres->l_level == LKM_EXMODE)
			old_level = 1;

		if (level == old_level)
			goto out;

		/*
		 * Converting an existing lock is not guaranteed to be
		 * atomic, so we can get away with simply unlocking
		 * here and allowing the lock code to try at the new
		 * level.
		 */

		FUNC1(&request);
		request.fl_type = F_UNLCK;
		request.fl_flags = FL_FLOCK;
		FUNC2(file, &request);

		FUNC7(file);
	}

	ret = FUNC6(file, level, trylock);
	if (ret) {
		if (ret == -EAGAIN && trylock)
			ret = -EWOULDBLOCK;
		else
			FUNC3(ret);
		goto out;
	}

	ret = FUNC2(file, fl);
	if (ret)
		FUNC7(file);

out:
	FUNC5(&fp->fp_mutex);

	return ret;
}