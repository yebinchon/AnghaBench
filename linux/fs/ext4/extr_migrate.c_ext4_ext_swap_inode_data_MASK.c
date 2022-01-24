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
struct inode {int /*<<< orphan*/  i_lock; scalar_t__ i_blocks; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/ * i_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EAGAIN ; 
 size_t EXT4_DIND_BLOCK ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 size_t EXT4_IND_BLOCK ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_STATE_EXT_MIGRATE ; 
 size_t EXT4_TIND_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(handle_t *handle, struct inode *inode,
						struct inode *tmp_inode)
{
	int retval;
	__le32	i_data[3];
	struct ext4_inode_info *ei = FUNC0(inode);
	struct ext4_inode_info *tmp_ei = FUNC0(tmp_inode);

	/*
	 * One credit accounted for writing the
	 * i_data field of the original inode
	 */
	retval = FUNC3(handle, 1);
	if (retval) {
		retval = FUNC4(handle, 1);
		if (retval)
			goto err_out;
	}

	i_data[0] = ei->i_data[EXT4_IND_BLOCK];
	i_data[1] = ei->i_data[EXT4_DIND_BLOCK];
	i_data[2] = ei->i_data[EXT4_TIND_BLOCK];

	FUNC1(&FUNC0(inode)->i_data_sem);
	/*
	 * if EXT4_STATE_EXT_MIGRATE is cleared a block allocation
	 * happened after we started the migrate. We need to
	 * fail the migrate
	 */
	if (!FUNC7(inode, EXT4_STATE_EXT_MIGRATE)) {
		retval = -EAGAIN;
		FUNC12(&FUNC0(inode)->i_data_sem);
		goto err_out;
	} else
		FUNC2(inode, EXT4_STATE_EXT_MIGRATE);
	/*
	 * We have the extent map build with the tmp inode.
	 * Now copy the i_data across
	 */
	FUNC6(inode, EXT4_INODE_EXTENTS);
	FUNC9(ei->i_data, tmp_ei->i_data, sizeof(ei->i_data));

	/*
	 * Update i_blocks with the new blocks that got
	 * allocated while adding extents for extent index
	 * blocks.
	 *
	 * While converting to extents we need not
	 * update the original inode i_blocks for extent blocks
	 * via quota APIs. The quota update happened via tmp_inode already.
	 */
	FUNC10(&inode->i_lock);
	inode->i_blocks += tmp_inode->i_blocks;
	FUNC11(&inode->i_lock);
	FUNC12(&FUNC0(inode)->i_data_sem);

	/*
	 * We mark the inode dirty after, because we decrement the
	 * i_blocks when freeing the indirect meta-data blocks
	 */
	retval = FUNC8(handle, inode, i_data);
	FUNC5(handle, inode);

err_out:
	return retval;
}