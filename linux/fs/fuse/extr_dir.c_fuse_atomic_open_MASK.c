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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct fuse_conn {int no_create; } ;
struct file {int /*<<< orphan*/  f_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FMODE_CREATED ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 unsigned int O_CREAT ; 
 int FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (struct file*,struct dentry*) ; 
 int FUNC6 (struct inode*,struct dentry*,struct file*,unsigned int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC7 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC9 (struct inode*) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *entry,
			    struct file *file, unsigned flags,
			    umode_t mode)
{
	int err;
	struct fuse_conn *fc = FUNC9(dir);
	struct dentry *res = NULL;

	if (FUNC2(entry)) {
		res = FUNC7(dir, entry, 0);
		if (FUNC0(res))
			return FUNC1(res);

		if (res)
			entry = res;
	}

	if (!(flags & O_CREAT) || FUNC3(entry))
		goto no_open;

	/* Only creates */
	file->f_mode |= FMODE_CREATED;

	if (fc->no_create)
		goto mknod;

	err = FUNC6(dir, entry, file, flags, mode);
	if (err == -ENOSYS) {
		fc->no_create = 1;
		goto mknod;
	}
out_dput:
	FUNC4(res);
	return err;

mknod:
	err = FUNC8(dir, entry, mode, 0);
	if (err)
		goto out_dput;
no_open:
	return FUNC5(file, res);
}