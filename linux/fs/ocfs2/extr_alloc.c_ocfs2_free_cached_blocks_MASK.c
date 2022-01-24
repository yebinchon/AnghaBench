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
struct ocfs2_super {int dummy; } ;
struct ocfs2_cached_block_free {struct ocfs2_cached_block_free* free_next; int /*<<< orphan*/  free_bit; scalar_t__ free_blk; scalar_t__ free_bg; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_SUBALLOC_FREE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_cached_block_free*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct inode* FUNC10 (struct ocfs2_super*,int,int) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/ * FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct ocfs2_super *osb,
				    int sysfile_type,
				    int slot,
				    struct ocfs2_cached_block_free *head)
{
	int ret;
	u64 bg_blkno;
	handle_t *handle;
	struct inode *inode;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_cached_block_free *tmp;

	inode = FUNC10(osb, sysfile_type, slot);
	if (!inode) {
		ret = -EINVAL;
		FUNC7(ret);
		goto out;
	}

	FUNC3(inode);

	ret = FUNC11(inode, &di_bh, 1);
	if (ret) {
		FUNC7(ret);
		goto out_mutex;
	}

	while (head) {
		if (head->free_bg)
			bg_blkno = head->free_bg;
		else
			bg_blkno = FUNC14(head->free_blk,
							      head->free_bit);
		handle = FUNC13(osb, OCFS2_SUBALLOC_FREE);
		if (FUNC0(handle)) {
			ret = FUNC1(handle);
			FUNC7(ret);
			goto out_unlock;
		}

		FUNC15(
		     (unsigned long long)head->free_blk, head->free_bit);

		ret = FUNC9(handle, inode, di_bh,
					       head->free_bit, bg_blkno, 1);
		if (ret)
			FUNC7(ret);

		FUNC8(osb, handle);

		tmp = head;
		head = head->free_next;
		FUNC6(tmp);
	}

out_unlock:
	FUNC12(inode, 1);
	FUNC2(di_bh);
out_mutex:
	FUNC4(inode);
	FUNC5(inode);
out:
	while(head) {
		/* Premature exit may have left some dangling items. */
		tmp = head;
		head = head->free_next;
		FUNC6(tmp);
	}

	return ret;
}