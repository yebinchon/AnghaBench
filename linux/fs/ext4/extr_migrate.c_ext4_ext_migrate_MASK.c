#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct migrate_struct {scalar_t__ curr_block; } ;
struct inode {scalar_t__ i_blocks; int i_ino; TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct ext4_inode_info {scalar_t__* i_data; int /*<<< orphan*/  i_data_sem; } ;
typedef  int /*<<< orphan*/  lb ;
typedef  struct inode handle_t ;
typedef  int __u32 ;
typedef  scalar_t__ __le32 ;
struct TYPE_4__ {int s_blocksize; int /*<<< orphan*/  s_root; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t EXT4_DIND_BLOCK ; 
 int /*<<< orphan*/  EXT4_HT_MIGRATE ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 size_t EXT4_IND_BLOCK ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FUNC2 (TYPE_1__*) ; 
 int EXT4_NDIR_BLOCKS ; 
 int /*<<< orphan*/  EXT4_STATE_EXT_MIGRATE ; 
 size_t EXT4_TIND_BLOCK ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 struct inode* FUNC14 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct inode* FUNC16 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*,struct inode*,struct migrate_struct*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (struct migrate_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int FUNC32 (struct inode*,struct inode*,int /*<<< orphan*/ ,struct migrate_struct*) ; 
 int FUNC33 (struct inode*,struct inode*,int /*<<< orphan*/ ,struct migrate_struct*) ; 
 int FUNC34 (struct inode*,struct inode*,int /*<<< orphan*/ ,struct migrate_struct*) ; 
 int FUNC35 (struct inode*,struct inode*,int /*<<< orphan*/ ,struct migrate_struct*) ; 

int FUNC36(struct inode *inode)
{
	handle_t *handle;
	int retval = 0, i;
	__le32 *i_data;
	struct ext4_inode_info *ei;
	struct inode *tmp_inode = NULL;
	struct migrate_struct lb;
	unsigned long max_entries;
	__u32 goal;
	uid_t owner[2];

	/*
	 * If the filesystem does not support extents, or the inode
	 * already is extent-based, error out.
	 */
	if (!FUNC11(inode->i_sb) ||
	    (FUNC20(inode, EXT4_INODE_EXTENTS)))
		return -EINVAL;

	if (FUNC5(inode->i_mode) && inode->i_blocks == 0)
		/*
		 * don't migrate fast symlink
		 */
		return retval;

	/*
	 * Worst case we can touch the allocation bitmaps, a bgd
	 * block, and a block to link in the orphan list.  We do need
	 * need to worry about credits for modifying the quota inode.
	 */
	handle = FUNC14(inode, EXT4_HT_MIGRATE,
		4 + FUNC2(inode->i_sb));

	if (FUNC3(handle)) {
		retval = FUNC4(handle);
		return retval;
	}
	goal = (((inode->i_ino - 1) / FUNC1(inode->i_sb)) *
		FUNC1(inode->i_sb)) + 1;
	owner[0] = FUNC26(inode);
	owner[1] = FUNC23(inode);
	tmp_inode = FUNC16(handle, FUNC7(inode->i_sb->s_root),
				   S_IFREG, NULL, goal, owner, 0);
	if (FUNC3(tmp_inode)) {
		retval = FUNC4(tmp_inode);
		FUNC15(handle);
		return retval;
	}
	FUNC25(tmp_inode, FUNC24(inode));
	/*
	 * Set the i_nlink to zero so it will be deleted later
	 * when we drop inode reference.
	 */
	FUNC6(tmp_inode);

	FUNC10(handle, tmp_inode);
	FUNC17(handle, tmp_inode);
	FUNC15(handle);

	/*
	 * start with one credit accounted for
	 * superblock modification.
	 *
	 * For the tmp_inode we already have committed the
	 * transaction that created the inode. Later as and
	 * when we add extents we extent the journal
	 */
	/*
	 * Even though we take i_mutex we can still cause block
	 * allocation via mmap write to holes. If we have allocated
	 * new blocks we fail migrate.  New block allocation will
	 * clear EXT4_STATE_EXT_MIGRATE flag.  The flag is updated
	 * with i_data_sem held to prevent racing with block
	 * allocation.
	 */
	FUNC8(&FUNC0(inode)->i_data_sem);
	FUNC19(inode, EXT4_STATE_EXT_MIGRATE);
	FUNC31((&FUNC0(inode)->i_data_sem));

	handle = FUNC14(inode, EXT4_HT_MIGRATE, 1);
	if (FUNC3(handle)) {
		/*
		 * It is impossible to update on-disk structures without
		 * a handle, so just rollback in-core changes and live other
		 * work to orphan_list_cleanup()
		 */
		FUNC18(NULL, tmp_inode);
		retval = FUNC4(handle);
		goto out;
	}

	ei = FUNC0(inode);
	i_data = ei->i_data;
	FUNC29(&lb, 0, sizeof(lb));

	/* 32 bit block address 4 bytes */
	max_entries = inode->i_sb->s_blocksize >> 2;
	for (i = 0; i < EXT4_NDIR_BLOCKS; i++) {
		if (i_data[i]) {
			retval = FUNC33(handle, tmp_inode,
						FUNC28(i_data[i]), &lb);
			if (retval)
				goto err_out;
		} else
			lb.curr_block++;
	}
	if (i_data[EXT4_IND_BLOCK]) {
		retval = FUNC34(handle, tmp_inode,
				FUNC28(i_data[EXT4_IND_BLOCK]), &lb);
		if (retval)
			goto err_out;
	} else
		lb.curr_block += max_entries;
	if (i_data[EXT4_DIND_BLOCK]) {
		retval = FUNC32(handle, tmp_inode,
				FUNC28(i_data[EXT4_DIND_BLOCK]), &lb);
		if (retval)
			goto err_out;
	} else
		lb.curr_block += max_entries * max_entries;
	if (i_data[EXT4_TIND_BLOCK]) {
		retval = FUNC35(handle, tmp_inode,
				FUNC28(i_data[EXT4_TIND_BLOCK]), &lb);
		if (retval)
			goto err_out;
	}
	/*
	 * Build the last extent
	 */
	retval = FUNC21(handle, tmp_inode, &lb);
err_out:
	if (retval)
		/*
		 * Failure case delete the extent information with the
		 * tmp_inode
		 */
		FUNC22(handle, tmp_inode);
	else {
		retval = FUNC9(handle, inode, tmp_inode);
		if (retval)
			/*
			 * if we fail to swap inode data free the extent
			 * details of the tmp inode
			 */
			FUNC22(handle, tmp_inode);
	}

	/* We mark the tmp_inode dirty via ext4_ext_tree_init. */
	if (FUNC12(handle, 1) != 0)
		FUNC13(handle, 1);

	/*
	 * Mark the tmp_inode as of size zero
	 */
	FUNC25(tmp_inode, 0);

	/*
	 * set the  i_blocks count to zero
	 * so that the ext4_evict_inode() does the
	 * right job
	 *
	 * We don't need to take the i_lock because
	 * the inode is not visible to user space.
	 */
	tmp_inode->i_blocks = 0;

	/* Reset the extent details */
	FUNC10(handle, tmp_inode);
	FUNC15(handle);
out:
	FUNC30(tmp_inode);
	FUNC27(tmp_inode);

	return retval;
}