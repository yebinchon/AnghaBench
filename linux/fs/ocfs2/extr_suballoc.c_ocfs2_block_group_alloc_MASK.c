#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  size_t u16 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_blkno; int /*<<< orphan*/  bg_chain; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_total; int /*<<< orphan*/  i_used; } ;
struct TYPE_9__ {TYPE_3__ bitmap1; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_cpg; int /*<<< orphan*/  cl_next_free_rec; int /*<<< orphan*/  cl_count; TYPE_2__* cl_recs; } ;
struct TYPE_6__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_clusters; TYPE_4__ id1; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {scalar_t__ ac_last_group; } ;
struct inode {int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  struct buffer_head handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; } ;
struct TYPE_7__ {int /*<<< orphan*/  c_blkno; int /*<<< orphan*/  c_total; int /*<<< orphan*/  c_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct buffer_head* FUNC14 (struct ocfs2_super*,struct buffer_head*,struct inode*,struct ocfs2_alloc_context*,struct ocfs2_chain_list*) ; 
 struct buffer_head* FUNC15 (struct buffer_head*,struct inode*,struct ocfs2_alloc_context*,struct ocfs2_chain_list*) ; 
 int FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_super*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int FUNC22 (struct buffer_head*,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*,struct buffer_head*) ; 
 int FUNC24 (struct ocfs2_super*,scalar_t__,scalar_t__,int,struct ocfs2_alloc_context**) ; 
 struct buffer_head* FUNC25 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (unsigned long long) ; 

__attribute__((used)) static int FUNC30(struct ocfs2_super *osb,
				   struct inode *alloc_inode,
				   struct buffer_head *bh,
				   u64 max_block,
				   u64 *last_alloc_group,
				   int flags)
{
	int status, credits;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) bh->b_data;
	struct ocfs2_chain_list *cl;
	struct ocfs2_alloc_context *ac = NULL;
	handle_t *handle = NULL;
	u16 alloc_rec;
	struct buffer_head *bg_bh = NULL;
	struct ocfs2_group_desc *bg;

	FUNC0(FUNC21(alloc_inode));

	cl = &fe->id2.i_chain;
	status = FUNC24(osb,
						   FUNC9(cl->cl_cpg),
						   max_block, flags, &ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC13(status);
		goto bail;
	}

	credits = FUNC16(osb->sb,
						 FUNC9(cl->cl_cpg));
	handle = FUNC25(osb, credits);
	if (FUNC2(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC13(status);
		goto bail;
	}

	if (last_alloc_group && *last_alloc_group != 0) {
		FUNC29(
				(unsigned long long)*last_alloc_group);
		ac->ac_last_group = *last_alloc_group;
	}

	bg_bh = FUNC14(osb, handle, alloc_inode,
					       ac, cl);
	if (FUNC2(bg_bh) && (FUNC4(bg_bh) == -ENOSPC))
		bg_bh = FUNC15(handle,
							  alloc_inode,
							  ac, cl);
	if (FUNC2(bg_bh)) {
		status = FUNC4(bg_bh);
		bg_bh = NULL;
		if (status != -ENOSPC)
			FUNC13(status);
		goto bail;
	}
	bg = (struct ocfs2_group_desc *) bg_bh->b_data;

	status = FUNC22(handle, FUNC1(alloc_inode),
					 bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC13(status);
		goto bail;
	}

	alloc_rec = FUNC9(bg->bg_chain);
	FUNC10(&cl->cl_recs[alloc_rec].c_free,
		     FUNC9(bg->bg_free_bits_count));
	FUNC10(&cl->cl_recs[alloc_rec].c_total,
		     FUNC9(bg->bg_bits));
	cl->cl_recs[alloc_rec].c_blkno = bg->bg_blkno;
	if (FUNC9(cl->cl_next_free_rec) < FUNC9(cl->cl_count))
		FUNC8(&cl->cl_next_free_rec, 1);

	FUNC10(&fe->id1.bitmap1.i_used, FUNC9(bg->bg_bits) -
					FUNC9(bg->bg_free_bits_count));
	FUNC10(&fe->id1.bitmap1.i_total, FUNC9(bg->bg_bits));
	FUNC10(&fe->i_clusters, FUNC9(cl->cl_cpg));

	FUNC23(handle, bh);

	FUNC27(&FUNC3(alloc_inode)->ip_lock);
	FUNC3(alloc_inode)->ip_clusters = FUNC11(fe->i_clusters);
	fe->i_size = FUNC6(FUNC17(alloc_inode->i_sb,
					     FUNC11(fe->i_clusters)));
	FUNC28(&FUNC3(alloc_inode)->ip_lock);
	FUNC7(alloc_inode, FUNC12(fe->i_size));
	alloc_inode->i_blocks = FUNC20(alloc_inode);
	FUNC26(handle, alloc_inode, 0);

	status = 0;

	/* save the new last alloc group so that the caller can cache it. */
	if (last_alloc_group)
		*last_alloc_group = ac->ac_last_group;

bail:
	if (handle)
		FUNC18(osb, handle);

	if (ac)
		FUNC19(ac);

	FUNC5(bg_bh);

	if (status)
		FUNC13(status);
	return status;
}