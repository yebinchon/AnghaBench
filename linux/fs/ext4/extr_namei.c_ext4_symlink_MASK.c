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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {char* i_link; int i_size; int /*<<< orphan*/ * i_op; TYPE_1__* i_sb; } ;
struct fscrypt_str {int len; unsigned char* name; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  struct inode handle_t ;
struct TYPE_6__ {int i_disksize; int /*<<< orphan*/  i_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FUNC2 (TYPE_1__*) ; 
 int EXT4_N_BLOCKS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int EXT4_XATTR_TRANS_BLOCKS ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC8 (struct inode*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_encrypted_symlink_inode_operations ; 
 int /*<<< orphan*/  ext4_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct inode* FUNC16 () ; 
 struct inode* FUNC17 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 struct inode* FUNC19 (struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct inode*,struct inode*) ; 
 int FUNC21 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  ext4_symlink_inode_operations ; 
 int FUNC23 (struct inode*,char const*,int,struct fscrypt_str*) ; 
 int FUNC24 (struct inode*,char const*,int,int /*<<< orphan*/ ,struct fscrypt_str*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,int) ; 
 int FUNC30 (char const*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 

__attribute__((used)) static int FUNC33(struct inode *dir,
			struct dentry *dentry, const char *symname)
{
	handle_t *handle;
	struct inode *inode;
	int err, len = FUNC30(symname);
	int credits;
	struct fscrypt_str disk_link;

	if (FUNC31(FUNC14(FUNC3(dir->i_sb))))
		return -EIO;

	err = FUNC24(dir, symname, len, dir->i_sb->s_blocksize,
				      &disk_link);
	if (err)
		return err;

	err = FUNC10(dir);
	if (err)
		return err;

	if ((disk_link.len > EXT4_N_BLOCKS * 4)) {
		/*
		 * For non-fast symlinks, we just allocate inode and put it on
		 * orphan list in the first transaction => we need bitmap,
		 * group descriptor, sb, inode block, quota blocks, and
		 * possibly selinux xattr blocks.
		 */
		credits = 4 + FUNC2(dir->i_sb) +
			  EXT4_XATTR_TRANS_BLOCKS;
	} else {
		/*
		 * Fast symlink. We have to add entry to directory
		 * (EXT4_DATA_TRANS_BLOCKS + EXT4_INDEX_EXTRA_TRANS_BLOCKS),
		 * allocate new inode (bitmap, group descriptor, inode block,
		 * quota blocks, sb is already counted in previous macros).
		 */
		credits = FUNC0(dir->i_sb) +
			  EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3;
	}

	inode = FUNC19(dir, S_IFLNK|S_IRWXUGO,
					    &dentry->d_name, 0, NULL,
					    EXT4_HT_DIR, credits);
	handle = FUNC16();
	if (FUNC6(inode)) {
		if (handle)
			FUNC18(handle);
		return FUNC7(inode);
	}

	if (FUNC5(inode)) {
		err = FUNC23(inode, symname, len, &disk_link);
		if (err)
			goto err_drop_inode;
		inode->i_op = &ext4_encrypted_symlink_inode_operations;
	}

	if ((disk_link.len > EXT4_N_BLOCKS * 4)) {
		if (!FUNC5(inode))
			inode->i_op = &ext4_symlink_inode_operations;
		FUNC25(inode);
		FUNC22(inode);
		/*
		 * We cannot call page_symlink() with transaction started
		 * because it calls into ext4_write_begin() which can wait
		 * for transaction commit if we are running out of space
		 * and thus we deadlock. So we have to stop transaction now
		 * and restart it when symlink contents is written.
		 * 
		 * To keep fs consistent in case of crash, we have to put inode
		 * to orphan list in the mean time.
		 */
		FUNC11(inode);
		err = FUNC20(handle, inode);
		FUNC18(handle);
		handle = NULL;
		if (err)
			goto err_drop_inode;
		err = FUNC8(inode, disk_link.name, disk_link.len, 1);
		if (err)
			goto err_drop_inode;
		/*
		 * Now inode is being linked into dir (EXT4_DATA_TRANS_BLOCKS
		 * + EXT4_INDEX_EXTRA_TRANS_BLOCKS), inode is also modified
		 */
		handle = FUNC17(dir, EXT4_HT_DIR,
				FUNC0(dir->i_sb) +
				EXT4_INDEX_EXTRA_TRANS_BLOCKS + 1);
		if (FUNC6(handle)) {
			err = FUNC7(handle);
			handle = NULL;
			goto err_drop_inode;
		}
		FUNC29(inode, 1);
		err = FUNC21(handle, inode);
		if (err)
			goto err_drop_inode;
	} else {
		/* clear the extent format for fast symlink */
		FUNC13(inode, EXT4_INODE_EXTENTS);
		if (!FUNC5(inode)) {
			inode->i_op = &ext4_fast_symlink_inode_operations;
			inode->i_link = (char *)&FUNC1(inode)->i_data;
		}
		FUNC28((char *)&FUNC1(inode)->i_data, disk_link.name,
		       disk_link.len);
		inode->i_size = disk_link.len - 1;
	}
	FUNC1(inode)->i_disksize = inode->i_size;
	err = FUNC12(handle, dentry, inode);
	if (!err && FUNC4(dir))
		FUNC15(handle);

	if (handle)
		FUNC18(handle);
	goto out_free_encrypted_link;

err_drop_inode:
	if (handle)
		FUNC18(handle);
	FUNC9(inode);
	FUNC32(inode);
	FUNC26(inode);
out_free_encrypted_link:
	if (disk_link.name != (unsigned char *)symname)
		FUNC27(disk_link.name);
	return err;
}