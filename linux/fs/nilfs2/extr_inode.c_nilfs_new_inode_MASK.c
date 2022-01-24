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
struct the_nilfs {int /*<<< orphan*/  ns_next_gen_lock; int /*<<< orphan*/  ns_next_generation; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int /*<<< orphan*/  inodes_count; int /*<<< orphan*/  ifile; } ;
struct nilfs_inode_info {int i_flags; scalar_t__ i_dir_start_lookup; int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_bmap; int /*<<< orphan*/  i_bh; struct nilfs_root* i_root; } ;
struct inode {scalar_t__ i_generation; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mapping; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 struct inode* FUNC1 (int) ; 
 int NILFS_FL_INHERITED ; 
 struct nilfs_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BMAP ; 
 int /*<<< orphan*/  NILFS_I_NEW ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC14 (struct super_block*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC18 (struct inode*,struct nilfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 

struct inode *FUNC26(struct inode *dir, umode_t mode)
{
	struct super_block *sb = dir->i_sb;
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct inode *inode;
	struct nilfs_inode_info *ii;
	struct nilfs_root *root;
	int err = -ENOMEM;
	ino_t ino;

	inode = FUNC14(sb);
	if (FUNC24(!inode))
		goto failed;

	FUNC13(inode->i_mapping,
			   FUNC12(inode->i_mapping, ~__GFP_FS));

	root = FUNC2(dir)->i_root;
	ii = FUNC2(inode);
	ii->i_state = FUNC0(NILFS_I_NEW);
	ii->i_root = root;

	err = FUNC16(root->ifile, &ino, &ii->i_bh);
	if (FUNC24(err))
		goto failed_ifile_create_inode;
	/* reference count of i_bh inherits from nilfs_mdt_read_block() */

	FUNC6(&root->inodes_count);
	FUNC9(inode, dir, mode);
	inode->i_ino = ino;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC8(inode);

	if (FUNC5(mode) || FUNC3(mode) || FUNC4(mode)) {
		err = FUNC15(ii->i_bmap, NULL);
		if (err < 0)
			goto failed_after_creation;

		FUNC21(NILFS_I_BMAP, &ii->i_state);
		/* No lock is needed; iget() ensures it. */
	}

	ii->i_flags = FUNC19(
		mode, FUNC2(dir)->i_flags & NILFS_FL_INHERITED);

	/* ii->i_file_acl = 0; */
	/* ii->i_dir_acl = 0; */
	ii->i_dir_start_lookup = 0;
	FUNC20(inode);
	FUNC22(&nilfs->ns_next_gen_lock);
	inode->i_generation = nilfs->ns_next_generation++;
	FUNC23(&nilfs->ns_next_gen_lock);
	if (FUNC18(inode, root, ino) < 0) {
		err = -EIO;
		goto failed_after_creation;
	}

	err = FUNC17(inode, dir);
	if (FUNC24(err))
		/*
		 * Never occur.  When supporting nilfs_init_acl(),
		 * proper cancellation of above jobs should be considered.
		 */
		goto failed_after_creation;

	return inode;

 failed_after_creation:
	FUNC7(inode);
	FUNC25(inode);
	FUNC10(inode);  /*
		       * raw_inode will be deleted through
		       * nilfs_evict_inode().
		       */
	goto failed;

 failed_ifile_create_inode:
	FUNC11(inode);
	FUNC10(inode);
 failed:
	return FUNC1(err);
}