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
typedef  unsigned int u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_cpg; } ;
struct ocfs2_alloc_context {int ac_disable_chain_relink; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct buffer_head* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,struct inode*,struct buffer_head*) ; 
 int FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,unsigned int,unsigned int*,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,unsigned int,unsigned int,struct ocfs2_chain_list*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_chain_list*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct ocfs2_chain_list*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*) ; 
 struct buffer_head* FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long,unsigned int) ; 

__attribute__((used)) static struct buffer_head *
FUNC17(handle_t *handle,
				  struct inode *alloc_inode,
				  struct ocfs2_alloc_context *ac,
				  struct ocfs2_chain_list *cl)
{
	int status;
	u32 bit_off, num_bits;
	u64 bg_blkno;
	unsigned int min_bits = FUNC3(cl->cl_cpg) >> 1;
	struct buffer_head *bg_bh = NULL;
	unsigned int alloc_rec = FUNC12(cl);
	struct ocfs2_super *osb = FUNC2(alloc_inode->i_sb);

	if (!FUNC14(osb)) {
		status = -ENOSPC;
		goto bail;
	}

	status = FUNC11(handle,
				    FUNC9(osb->sb));
	if (status) {
		FUNC4(status);
		goto bail;
	}

	/*
	 * We're going to be grabbing from multiple cluster groups.
	 * We don't have enough credits to relink them all, and the
	 * cluster groups will be staying in cache for the duration of
	 * this operation.
	 */
	ac->ac_disable_chain_relink = 1;

	/* Claim the first region */
	status = FUNC6(osb, handle, ac, min_bits,
					      &bit_off, &num_bits);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC4(status);
		goto bail;
	}
	min_bits = num_bits;

	/* setup the group */
	bg_blkno = FUNC10(osb->sb, bit_off);
	FUNC16(
				(unsigned long long)bg_blkno, alloc_rec);

	bg_bh = FUNC15(osb->sb, bg_blkno);
	if (!bg_bh) {
		status = -ENOMEM;
		FUNC4(status);
		goto bail;
	}
	FUNC13(FUNC1(alloc_inode), bg_bh);

	status = FUNC7(handle, alloc_inode, bg_bh,
					bg_blkno, num_bits, alloc_rec, cl);
	if (status < 0) {
		FUNC4(status);
		goto bail;
	}

	status = FUNC8(handle, alloc_inode,
						  bg_bh, ac, cl, min_bits);
	if (status)
		FUNC4(status);

bail:
	if (status)
		FUNC5(handle, ac, alloc_inode, bg_bh);
	return status ? FUNC0(status) : bg_bh;
}