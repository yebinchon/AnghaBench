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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_cpg; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct buffer_head* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,int /*<<< orphan*/ ,unsigned int,struct ocfs2_chain_list*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct ocfs2_chain_list*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,unsigned int) ; 

__attribute__((used)) static struct buffer_head *
FUNC12(struct ocfs2_super *osb, handle_t *handle,
			       struct inode *alloc_inode,
			       struct ocfs2_alloc_context *ac,
			       struct ocfs2_chain_list *cl)
{
	int status;
	u32 bit_off, num_bits;
	u64 bg_blkno;
	struct buffer_head *bg_bh;
	unsigned int alloc_rec = FUNC8(cl);

	status = FUNC6(handle, ac,
				      FUNC3(cl->cl_cpg), &bit_off,
				      &num_bits);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC4(status);
		goto bail;
	}

	/* setup the group */
	bg_blkno = FUNC7(osb->sb, bit_off);
	FUNC11(
	     (unsigned long long)bg_blkno, alloc_rec);

	bg_bh = FUNC10(osb->sb, bg_blkno);
	if (!bg_bh) {
		status = -ENOMEM;
		FUNC4(status);
		goto bail;
	}
	FUNC9(FUNC1(alloc_inode), bg_bh);

	status = FUNC5(handle, alloc_inode, bg_bh,
					bg_blkno, num_bits, alloc_rec, cl);
	if (status < 0) {
		FUNC2(bg_bh);
		FUNC4(status);
	}

bail:
	return status ? FUNC0(status) : bg_bh;
}