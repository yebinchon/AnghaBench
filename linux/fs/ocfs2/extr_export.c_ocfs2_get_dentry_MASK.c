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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_handle {scalar_t__ ih_blkno; scalar_t__ ih_generation; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {scalar_t__ i_generation; } ;

/* Variables and functions */
 int EINVAL ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct ocfs2_super* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC9 (struct ocfs2_super*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC10 (struct super_block*,scalar_t__) ; 
 int FUNC11 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int) ; 
 int FUNC13 (struct ocfs2_super*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,struct ocfs2_inode_handle*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 

__attribute__((used)) static struct dentry *FUNC19(struct super_block *sb,
		struct ocfs2_inode_handle *handle)
{
	struct inode *inode;
	struct ocfs2_super *osb = FUNC3(sb);
	u64 blkno = handle->ih_blkno;
	int status, set;
	struct dentry *result;

	FUNC14(sb, handle, (unsigned long long)blkno);

	if (blkno == 0) {
		result = FUNC1(-ESTALE);
		goto bail;
	}

	inode = FUNC10(sb, blkno);
	/*
	 * If the inode exists in memory, we only need to check it's
	 * generation number
	 */
	if (inode)
		goto check_gen;

	/*
	 * This will synchronize us against ocfs2_delete_inode() on
	 * all nodes
	 */
	status = FUNC11(osb, 1);
	if (status < 0) {
		FUNC7(ML_ERROR, "getting nfs sync lock(EX) failed %d\n", status);
		goto check_err;
	}

	status = FUNC13(osb, blkno, &set);
	if (status < 0) {
		if (status == -EINVAL) {
			/*
			 * The blkno NFS gave us doesn't even show up
			 * as an inode, we return -ESTALE to be
			 * nice
			 */
			status = -ESTALE;
		} else
			FUNC7(ML_ERROR, "test inode bit failed %d\n", status);
		goto unlock_nfs_sync;
	}

	FUNC18(status, set);
	/* If the inode allocator bit is clear, this inode must be stale */
	if (!set) {
		status = -ESTALE;
		goto unlock_nfs_sync;
	}

	inode = FUNC9(osb, blkno, 0, 0);

unlock_nfs_sync:
	FUNC12(osb, 1);

check_err:
	if (status < 0) {
		if (status == -ESTALE) {
			FUNC17((unsigned long long)blkno,
						     handle->ih_generation);
		}
		result = FUNC1(status);
		goto bail;
	}

	if (FUNC2(inode)) {
		FUNC8(FUNC4(inode));
		result = FUNC0(inode);
		goto bail;
	}

check_gen:
	if (handle->ih_generation != inode->i_generation) {
		FUNC16((unsigned long long)blkno,
						  handle->ih_generation,
						  inode->i_generation);
		FUNC6(inode);
		result = FUNC1(-ESTALE);
		goto bail;
	}

	result = FUNC5(inode);
	if (FUNC2(result))
		FUNC8(FUNC4(result));

bail:
	FUNC15(result);
	return result;
}