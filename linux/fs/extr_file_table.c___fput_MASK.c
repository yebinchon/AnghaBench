#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_cdev; int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct file {int f_mode; int f_flags; TYPE_2__ f_owner; TYPE_3__* f_op; struct inode* f_inode; TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef  int fmode_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* release ) (struct inode*,struct file*) ;int /*<<< orphan*/  (* fasync ) (int,struct file*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FASYNC ; 
 int FMODE_NEED_UNMOUNT ; 
 int FMODE_OPENED ; 
 int FMODE_PATH ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int FMODE_WRITER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct file*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(struct file *file)
{
	struct dentry *dentry = file->f_path.dentry;
	struct vfsmount *mnt = file->f_path.mnt;
	struct inode *inode = file->f_inode;
	fmode_t mode = file->f_mode;

	if (FUNC18(!(file->f_mode & FMODE_OPENED)))
		goto out;

	FUNC12();

	FUNC8(file);
	/*
	 * The function eventpoll_release() should be the first called
	 * in the file cleanup chain.
	 */
	FUNC5(file);
	FUNC11(file);

	FUNC10(file);
	if (FUNC18(file->f_flags & FASYNC)) {
		if (file->f_op->fasync)
			file->f_op->fasync(-1, file, 0);
	}
	if (file->f_op->release)
		file->f_op->release(inode, file);
	if (FUNC18(FUNC0(inode->i_mode) && inode->i_cdev != NULL &&
		     !(mode & FMODE_PATH))) {
		FUNC2(inode->i_cdev);
	}
	FUNC7(file->f_op);
	FUNC14(file->f_owner.pid);
	if ((mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
		FUNC9(inode);
	if (mode & FMODE_WRITER) {
		FUNC15(inode);
		FUNC1(mnt);
	}
	FUNC4(dentry);
	if (FUNC18(mode & FMODE_NEED_UNMOUNT))
		FUNC3(mnt);
	FUNC13(mnt);
out:
	FUNC6(file);
}