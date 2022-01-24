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
struct the_nilfs {int /*<<< orphan*/  ns_snapshot_mount_mutex; int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_cpfile; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int dummy; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct super_block*,scalar_t__,int,struct nilfs_root**) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct super_block*,struct nilfs_root*,struct dentry**) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct super_block *s, __u64 cno,
				 struct dentry **root_dentry)
{
	struct the_nilfs *nilfs = s->s_fs_info;
	struct nilfs_root *root;
	int ret;

	FUNC1(&nilfs->ns_snapshot_mount_mutex);

	FUNC0(&nilfs->ns_segctor_sem);
	ret = FUNC4(nilfs->ns_cpfile, cno);
	FUNC8(&nilfs->ns_segctor_sem);
	if (ret < 0) {
		ret = (ret == -ENOENT) ? -EINVAL : ret;
		goto out;
	} else if (!ret) {
		FUNC6(s, KERN_ERR,
			  "The specified checkpoint is not a snapshot (checkpoint number=%llu)",
			  (unsigned long long)cno);
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC3(s, cno, false, &root);
	if (ret) {
		FUNC6(s, KERN_ERR,
			  "error %d while loading snapshot (checkpoint number=%llu)",
			  ret, (unsigned long long)cno);
		goto out;
	}
	ret = FUNC5(s, root, root_dentry);
	FUNC7(root);
 out:
	FUNC2(&nilfs->ns_snapshot_mount_mutex);
	return ret;
}