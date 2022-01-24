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
struct TYPE_3__ {int /*<<< orphan*/  mnt; } ;
struct file {int /*<<< orphan*/  f_version; TYPE_1__ f_path; } ;
struct dir_context {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,struct dir_context*,int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long) ; 

int FUNC8(struct file *file, struct dir_context *ctx)
{
	int error = 0;
	struct inode *inode = FUNC1(file);
	int lock_level = 0;

	FUNC7((unsigned long long)FUNC0(inode)->ip_blkno);

	error = FUNC5(inode, file->f_path.mnt, &lock_level, 1);
	if (lock_level && error >= 0) {
		/* We release EX lock which used to update atime
		 * and get PR lock again to reduce contention
		 * on commonly accessed directories. */
		FUNC6(inode, 1);
		lock_level = 0;
		error = FUNC4(inode, NULL, 0);
	}
	if (error < 0) {
		if (error != -ENOENT)
			FUNC2(error);
		/* we haven't got any yet, so propagate the error. */
		goto bail_nolock;
	}

	error = FUNC3(inode, &file->f_version, ctx, false);

	FUNC6(inode, lock_level);
	if (error)
		FUNC2(error);

bail_nolock:

	return error;
}