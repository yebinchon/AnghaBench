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
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned int u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_count; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_bits; struct ocfs2_extent_list bg_list; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_bpc; int /*<<< orphan*/  cl_cpg; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,struct ocfs2_group_desc*,struct ocfs2_chain_list*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC9(handle_t *handle,
					    struct inode *alloc_inode,
					    struct buffer_head *bg_bh,
					    struct ocfs2_alloc_context *ac,
					    struct ocfs2_chain_list *cl,
					    unsigned int min_bits)
{
	int status;
	struct ocfs2_super *osb = FUNC1(alloc_inode->i_sb);
	struct ocfs2_group_desc *bg =
		(struct ocfs2_group_desc *)bg_bh->b_data;
	unsigned int needed = FUNC2(cl->cl_cpg) -
			 FUNC2(bg->bg_bits) / FUNC2(cl->cl_bpc);
	u32 p_cpos, clusters;
	u64 p_blkno;
	struct ocfs2_extent_list *el = &bg->bg_list;

	status = FUNC7(handle,
					 FUNC0(alloc_inode),
					 bg_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC3(status);
		goto bail;
	}

	while ((needed > 0) && (FUNC2(el->l_next_free_rec) <
				FUNC2(el->l_count))) {
		if (min_bits > needed)
			min_bits = needed;
		status = FUNC5(osb, handle, ac,
						      min_bits, &p_cpos,
						      &clusters);
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC3(status);
			goto bail;
		}
		p_blkno = FUNC6(osb->sb, p_cpos);
		FUNC4(osb, bg, cl, p_blkno,
					      clusters);

		min_bits = clusters;
		needed = FUNC2(cl->cl_cpg) -
			 FUNC2(bg->bg_bits) / FUNC2(cl->cl_bpc);
	}

	if (needed > 0) {
		/*
		 * We have used up all the extent rec but can't fill up
		 * the cpg. So bail out.
		 */
		status = -ENOSPC;
		goto bail;
	}

	FUNC8(handle, bg_bh);

bail:
	return status;
}