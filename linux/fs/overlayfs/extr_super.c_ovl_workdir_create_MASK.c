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
struct vfsmount {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  workdir; } ;
struct ovl_fs {TYPE_1__ config; TYPE_2__* workbasedir; struct vfsmount* upper_mnt; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int EEXIST ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct dentry*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_ACCESS ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct dentry* FUNC7 (char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC9 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct vfsmount*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int FUNC13 (struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC14(struct ovl_fs *ofs,
					 const char *name, bool persist)
{
	struct inode *dir =  ofs->workbasedir->d_inode;
	struct vfsmount *mnt = ofs->upper_mnt;
	struct dentry *work;
	int err;
	bool retried = false;
	bool locked = false;

	FUNC5(dir, I_MUTEX_PARENT);
	locked = true;

retry:
	work = FUNC7(name, ofs->workbasedir, FUNC12(name));

	if (!FUNC0(work)) {
		struct iattr attr = {
			.ia_valid = ATTR_MODE,
			.ia_mode = S_IFDIR | 0,
		};

		if (work->d_inode) {
			err = -EEXIST;
			if (retried)
				goto out_dput;

			if (persist)
				goto out_unlock;

			retried = true;
			FUNC10(dir, mnt, work, 0);
			FUNC3(work);
			goto retry;
		}

		work = FUNC9(dir, work, FUNC1(attr.ia_mode));
		err = FUNC2(work);
		if (FUNC0(work))
			goto out_err;

		/*
		 * Try to remove POSIX ACL xattrs from workdir.  We are good if:
		 *
		 * a) success (there was a POSIX ACL xattr and was removed)
		 * b) -ENODATA (there was no POSIX ACL xattr)
		 * c) -EOPNOTSUPP (POSIX ACL xattrs are not supported)
		 *
		 * There are various other error values that could effectively
		 * mean that the xattr doesn't exist (e.g. -ERANGE is returned
		 * if the xattr name is too long), but the set of filesystems
		 * allowed as upper are limited to "normal" ones, where checking
		 * for the above two errors is sufficient.
		 */
		err = FUNC13(work, XATTR_NAME_POSIX_ACL_DEFAULT);
		if (err && err != -ENODATA && err != -EOPNOTSUPP)
			goto out_dput;

		err = FUNC13(work, XATTR_NAME_POSIX_ACL_ACCESS);
		if (err && err != -ENODATA && err != -EOPNOTSUPP)
			goto out_dput;

		/* Clear any inherited mode bits */
		FUNC4(work->d_inode);
		err = FUNC8(work, &attr, NULL);
		FUNC6(work->d_inode);
		if (err)
			goto out_dput;
	} else {
		err = FUNC2(work);
		goto out_err;
	}
out_unlock:
	if (locked)
		FUNC6(dir);

	return work;

out_dput:
	FUNC3(work);
out_err:
	FUNC11("overlayfs: failed to create directory %s/%s (errno: %i); mounting read-only\n",
		ofs->config.workdir, name, -err);
	work = NULL;
	goto out_unlock;
}