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
struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
struct inode {scalar_t__ i_ino; } ;
struct buffer_head {scalar_t__ i_ino; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOLCK ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OI_LS_REFLINK_TARGET ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,struct inode**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct inode*) ; 

int FUNC12(struct inode *s_inode,
			      struct buffer_head **bh_s,
			      struct inode *t_inode,
			      struct buffer_head **bh_t)
{
	struct inode *inode1 = s_inode;
	struct inode *inode2 = t_inode;
	struct ocfs2_inode_info *oi1;
	struct ocfs2_inode_info *oi2;
	struct buffer_head *bh1 = NULL;
	struct buffer_head *bh2 = NULL;
	bool same_inode = (s_inode == t_inode);
	bool need_swap = (inode1->i_ino > inode2->i_ino);
	int status;

	/* First grab the VFS and rw locks. */
	FUNC2(s_inode, t_inode);
	if (need_swap)
		FUNC8(inode1, inode2);

	status = FUNC6(inode1, 1);
	if (status) {
		FUNC3(status);
		goto out_i1;
	}
	if (!same_inode) {
		status = FUNC6(inode2, 1);
		if (status) {
			FUNC3(status);
			goto out_i2;
		}
	}

	/* Now go for the cluster locks */
	oi1 = FUNC0(inode1);
	oi2 = FUNC0(inode2);

	FUNC9((unsigned long long)oi1->ip_blkno,
				(unsigned long long)oi2->ip_blkno);

	/* We always want to lock the one with the lower lockid first. */
	if (oi1->ip_blkno > oi2->ip_blkno)
		FUNC3(-ENOLCK);

	/* lock id1 */
	status = FUNC4(inode1, &bh1, 1,
					 OI_LS_REFLINK_TARGET);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC3(status);
		goto out_rw2;
	}

	/* lock id2 */
	if (!same_inode) {
		status = FUNC4(inode2, &bh2, 1,
						 OI_LS_REFLINK_TARGET);
		if (status < 0) {
			if (status != -ENOENT)
				FUNC3(status);
			goto out_cl1;
		}
	} else {
		bh2 = bh1;
	}

	/*
	 * If we swapped inode order above, we have to swap the buffer heads
	 * before passing them back to the caller.
	 */
	if (need_swap)
		FUNC8(bh1, bh2);
	*bh_s = bh1;
	*bh_t = bh2;

	FUNC10(
			(unsigned long long)oi1->ip_blkno,
			(unsigned long long)oi2->ip_blkno);

	return 0;

out_cl1:
	FUNC5(inode1, 1);
	FUNC1(bh1);
out_rw2:
	FUNC7(inode2, 1);
out_i2:
	FUNC7(inode1, 1);
out_i1:
	FUNC11(s_inode, t_inode);
	return status;
}