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
struct inode {TYPE_2__* i_mapping; int /*<<< orphan*/  i_ino; int /*<<< orphan*/ * i_op; TYPE_1__* i_sb; } ;
struct fscrypt_str {unsigned char* name; int len; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  f2fs_dblock_aops ; 
 int /*<<< orphan*/  f2fs_encrypted_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 struct inode* FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  f2fs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct inode*,char const*,size_t,struct fscrypt_str*) ; 
 int FUNC20 (struct inode*,char const*,size_t,int /*<<< orphan*/ ,struct fscrypt_str*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char*) ; 
 int FUNC23 (struct inode*,unsigned char*,int) ; 
 size_t FUNC24 (char const*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct inode *dir, struct dentry *dentry,
					const char *symname)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct inode *inode;
	size_t len = FUNC24(symname);
	struct fscrypt_str disk_link;
	int err;

	if (FUNC25(FUNC10(sbi)))
		return -EIO;
	if (!FUNC12(sbi))
		return -ENOSPC;

	err = FUNC20(dir, symname, len, dir->i_sb->s_blocksize,
				      &disk_link);
	if (err)
		return err;

	err = FUNC6(dir);
	if (err)
		return err;

	inode = FUNC14(dir, S_IFLNK | S_IRWXUGO);
	if (FUNC3(inode))
		return FUNC4(inode);

	if (FUNC2(inode))
		inode->i_op = &f2fs_encrypted_symlink_inode_operations;
	else
		inode->i_op = &f2fs_symlink_inode_operations;
	FUNC21(inode);
	inode->i_mapping->a_ops = &f2fs_dblock_aops;

	FUNC13(sbi);
	err = FUNC7(dentry, inode);
	if (err)
		goto out_f2fs_handle_failed_inode;
	FUNC17(sbi);
	FUNC8(sbi, inode->i_ino);

	err = FUNC19(inode, symname, len, &disk_link);
	if (err)
		goto err_out;

	err = FUNC23(inode, disk_link.name, disk_link.len);

err_out:
	FUNC5(dentry, inode);

	/*
	 * Let's flush symlink data in order to avoid broken symlink as much as
	 * possible. Nevertheless, fsyncing is the best way, but there is no
	 * way to get a file descriptor in order to flush that.
	 *
	 * Note that, it needs to do dir->fsync to make this recoverable.
	 * If the symlink path is stored into inline_data, there is no
	 * performance regression.
	 */
	if (!err) {
		FUNC18(inode->i_mapping, 0,
							disk_link.len - 1);

		if (FUNC1(dir))
			FUNC15(sbi->sb, 1);
	} else {
		FUNC16(dir, dentry);
	}

	FUNC9(sbi, true);
	goto out_free_encrypted_link;

out_f2fs_handle_failed_inode:
	FUNC11(inode);
out_free_encrypted_link:
	if (disk_link.name != (unsigned char *)symname)
		FUNC22(disk_link.name);
	return err;
}