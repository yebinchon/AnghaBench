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
struct super_block {scalar_t__ bd_fsfreeze_count; int s_mode; int s_flags; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_id; int /*<<< orphan*/  bd_fsfreeze_mutex; } ;
struct nilfs_super_data {int flags; struct super_block* bdev; scalar_t__ cno; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct dentry* FUNC0 (struct super_block*) ; 
 struct dentry* FUNC1 (int) ; 
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC3 (struct super_block*) ; 
 int SB_ACTIVE ; 
 int SB_RDONLY ; 
 int SB_SILENT ; 
 struct super_block* FUNC4 (char const*,int,struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct super_block*,scalar_t__,struct dentry**) ; 
 int FUNC12 (struct super_block*,void*,int) ; 
 scalar_t__ FUNC13 (char*,struct nilfs_super_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC15 (struct super_block*,int*,void*) ; 
 int /*<<< orphan*/  nilfs_set_bdev_super ; 
 int /*<<< orphan*/  nilfs_test_bdev_super ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct super_block* FUNC19 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct super_block*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*,struct super_block*) ; 

__attribute__((used)) static struct dentry *
FUNC21(struct file_system_type *fs_type, int flags,
	     const char *dev_name, void *data)
{
	struct nilfs_super_data sd;
	struct super_block *s;
	fmode_t mode = FMODE_READ | FMODE_EXCL;
	struct dentry *root_dentry;
	int err, s_new = false;

	if (!(flags & SB_RDONLY))
		mode |= FMODE_WRITE;

	sd.bdev = FUNC4(dev_name, mode, fs_type);
	if (FUNC2(sd.bdev))
		return FUNC0(sd.bdev);

	sd.cno = 0;
	sd.flags = flags;
	if (FUNC13((char *)data, &sd)) {
		err = -EINVAL;
		goto failed;
	}

	/*
	 * once the super is inserted into the list by sget, s_umount
	 * will protect the lockfs code from trying to start a snapshot
	 * while we are mounting
	 */
	FUNC9(&sd.bdev->bd_fsfreeze_mutex);
	if (sd.bdev->bd_fsfreeze_count > 0) {
		FUNC10(&sd.bdev->bd_fsfreeze_mutex);
		err = -EBUSY;
		goto failed;
	}
	s = FUNC19(fs_type, nilfs_test_bdev_super, nilfs_set_bdev_super, flags,
		 sd.bdev);
	FUNC10(&sd.bdev->bd_fsfreeze_mutex);
	if (FUNC2(s)) {
		err = FUNC3(s);
		goto failed;
	}

	if (!s->s_root) {
		s_new = true;

		/* New superblock instance created */
		s->s_mode = mode;
		FUNC20(s->s_id, sizeof(s->s_id), "%pg", sd.bdev);
		FUNC18(s, FUNC6(sd.bdev));

		err = FUNC12(s, data, flags & SB_SILENT ? 1 : 0);
		if (err)
			goto failed_super;

		s->s_flags |= SB_ACTIVE;
	} else if (!sd.cno) {
		if (FUNC16(s->s_root)) {
			if ((flags ^ s->s_flags) & SB_RDONLY) {
				FUNC14(s, KERN_ERR,
					  "the device already has a %s mount.",
					  FUNC17(s) ? "read-only" : "read/write");
				err = -EBUSY;
				goto failed_super;
			}
		} else {
			/*
			 * Try remount to setup mount states if the current
			 * tree is not mounted and only snapshots use this sb.
			 */
			err = FUNC15(s, &flags, data);
			if (err)
				goto failed_super;
		}
	}

	if (sd.cno) {
		err = FUNC11(s, sd.cno, &root_dentry);
		if (err)
			goto failed_super;
	} else {
		root_dentry = FUNC8(s->s_root);
	}

	if (!s_new)
		FUNC5(sd.bdev, mode);

	return root_dentry;

 failed_super:
	FUNC7(s);

 failed:
	if (!s_new)
		FUNC5(sd.bdev, mode);
	return FUNC1(err);
}