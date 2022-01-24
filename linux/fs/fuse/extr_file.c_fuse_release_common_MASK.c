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
struct TYPE_3__ {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  release_flags; } ;
struct fuse_release_args {int /*<<< orphan*/  inode; TYPE_1__ inarg; } ;
struct fuse_inode {int dummy; } ;
struct fuse_file {TYPE_2__* fc; scalar_t__ flock; struct fuse_release_args* release_args; } ;
struct file {int /*<<< orphan*/  f_flags; struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_4__ {int /*<<< orphan*/  destroy; } ;

/* Variables and functions */
 int FUSE_RELEASE ; 
 int FUSE_RELEASEDIR ; 
 int /*<<< orphan*/  FUSE_RELEASE_FLOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_inode*,struct fuse_file*,int /*<<< orphan*/ ,int) ; 
 struct fuse_inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct file *file, bool isdir)
{
	struct fuse_inode *fi = FUNC4(FUNC0(file));
	struct fuse_file *ff = file->private_data;
	struct fuse_release_args *ra = ff->release_args;
	int opcode = isdir ? FUSE_RELEASEDIR : FUSE_RELEASE;

	FUNC3(fi, ff, file->f_flags, opcode);

	if (ff->flock) {
		ra->inarg.release_flags |= FUSE_RELEASE_FLOCK_UNLOCK;
		ra->inarg.lock_owner = FUNC2(ff->fc,
							  (fl_owner_t) file);
	}
	/* Hold inode until release is finished */
	ra->inode = FUNC5(FUNC0(file));

	/*
	 * Normally this will send the RELEASE request, however if
	 * some asynchronous READ or WRITE requests are outstanding,
	 * the sending will be delayed.
	 *
	 * Make the release synchronous if this is a fuseblk mount,
	 * synchronous RELEASE is allowed (and desirable) in this case
	 * because the server can be trusted not to screw up.
	 */
	FUNC1(ff, ff->fc->destroy, isdir);
}