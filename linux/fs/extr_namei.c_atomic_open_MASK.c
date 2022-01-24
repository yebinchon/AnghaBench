#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct path {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct open_flags {int acc_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  mnt; TYPE_1__* dentry; } ;
struct nameidata {int flags; TYPE_3__ path; } ;
struct inode {TYPE_2__* i_op; } ;
struct TYPE_8__ {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct file {int f_mode; TYPE_4__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int (* atomic_open ) (struct inode*,struct dentry*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int FMODE_CREATED ; 
 int FMODE_OPENED ; 
 int LOOKUP_DIRECTORY ; 
 int O_CREAT ; 
 int O_DIRECTORY ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int FUNC5 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct inode*,struct dentry*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nameidata *nd, struct dentry *dentry,
			struct path *path, struct file *file,
			const struct open_flags *op,
			int open_flag, umode_t mode)
{
	struct dentry *const DENTRY_NOT_SET = (void *) -1UL;
	struct inode *dir =  nd->path.dentry->d_inode;
	int error;

	if (!(~open_flag & (O_EXCL | O_CREAT)))	/* both O_EXCL and O_CREAT */
		open_flag &= ~O_TRUNC;

	if (nd->flags & LOOKUP_DIRECTORY)
		open_flag |= O_DIRECTORY;

	file->f_path.dentry = DENTRY_NOT_SET;
	file->f_path.mnt = nd->path.mnt;
	error = dir->i_op->atomic_open(dir, dentry, file,
				       FUNC6(open_flag), mode);
	FUNC2(dentry);
	if (!error) {
		if (file->f_mode & FMODE_OPENED) {
			/*
			 * We didn't have the inode before the open, so check open
			 * permission here.
			 */
			int acc_mode = op->acc_mode;
			if (file->f_mode & FMODE_CREATED) {
				FUNC0(!(open_flag & O_CREAT));
				FUNC4(dir, dentry);
				acc_mode = 0;
			}
			error = FUNC5(&file->f_path, acc_mode, open_flag);
			if (FUNC0(error > 0))
				error = -EINVAL;
		} else if (FUNC0(file->f_path.dentry == DENTRY_NOT_SET)) {
			error = -EIO;
		} else {
			if (file->f_path.dentry) {
				FUNC3(dentry);
				dentry = file->f_path.dentry;
			}
			if (file->f_mode & FMODE_CREATED)
				FUNC4(dir, dentry);
			if (FUNC8(FUNC1(dentry))) {
				error = -ENOENT;
			} else {
				path->dentry = dentry;
				path->mnt = nd->path.mnt;
				return 0;
			}
		}
	}
	FUNC3(dentry);
	return error;
}