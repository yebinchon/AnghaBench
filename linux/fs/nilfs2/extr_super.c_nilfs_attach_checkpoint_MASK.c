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
struct the_nilfs {int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_inode_size; int /*<<< orphan*/  ns_segctor_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int /*<<< orphan*/  blocks_count; int /*<<< orphan*/  inodes_count; scalar_t__ ifile; } ;
struct nilfs_checkpoint {int /*<<< orphan*/  cp_blocks_count; int /*<<< orphan*/  cp_inodes_count; int /*<<< orphan*/  cp_ifile_inode; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ NILFS_CPTREE_CURRENT_CNO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct nilfs_checkpoint**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct buffer_head*) ; 
 struct nilfs_root* FUNC5 (struct the_nilfs*,scalar_t__) ; 
 int FUNC6 (struct super_block*,struct nilfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_root*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct super_block *sb, __u64 cno, int curr_mnt,
			    struct nilfs_root **rootp)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_root *root;
	struct nilfs_checkpoint *raw_cp;
	struct buffer_head *bh_cp;
	int err = -ENOMEM;

	root = FUNC5(
		nilfs, curr_mnt ? NILFS_CPTREE_CURRENT_CNO : cno);
	if (!root)
		return err;

	if (root->ifile)
		goto reuse; /* already attached checkpoint */

	FUNC1(&nilfs->ns_segctor_sem);
	err = FUNC3(nilfs->ns_cpfile, cno, 0, &raw_cp,
					  &bh_cp);
	FUNC10(&nilfs->ns_segctor_sem);
	if (FUNC9(err)) {
		if (err == -ENOENT || err == -EINVAL) {
			FUNC7(sb, KERN_ERR,
				  "Invalid checkpoint (checkpoint number=%llu)",
				  (unsigned long long)cno);
			err = -EINVAL;
		}
		goto failed;
	}

	err = FUNC6(sb, root, nilfs->ns_inode_size,
			       &raw_cp->cp_ifile_inode, &root->ifile);
	if (err)
		goto failed_bh;

	FUNC0(&root->inodes_count,
			FUNC2(raw_cp->cp_inodes_count));
	FUNC0(&root->blocks_count,
			FUNC2(raw_cp->cp_blocks_count));

	FUNC4(nilfs->ns_cpfile, cno, bh_cp);

 reuse:
	*rootp = root;
	return 0;

 failed_bh:
	FUNC4(nilfs->ns_cpfile, cno, bh_cp);
 failed:
	FUNC8(root);

	return err;
}