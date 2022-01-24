#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_tree {struct buffer_head* et_root_bh; int /*<<< orphan*/  et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; scalar_t__ l_next_free_rec; TYPE_1__* l_recs; } ;
struct ocfs2_extent_block {int /*<<< orphan*/  h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  e_int_clusters; int /*<<< orphan*/  e_blkno; scalar_t__ e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_extent_block*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int,struct ocfs2_alloc_context*,struct buffer_head**) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_extent_tree*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct buffer_head**,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_extent_list*) ; 

__attribute__((used)) static int FUNC19(handle_t *handle,
				  struct ocfs2_extent_tree *et,
				  struct ocfs2_alloc_context *meta_ac,
				  struct buffer_head **ret_new_eb_bh)
{
	int status, i, block_given = 0;
	u32 new_clusters;
	struct buffer_head *new_eb_bh = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list  *root_el;
	struct ocfs2_extent_list  *eb_el;

	if (!FUNC14(et)) {
		status = FUNC17(handle, et,
						      &new_eb_bh, 1,
						      &block_given);
	} else if (meta_ac) {
		status = FUNC11(handle, et, 1, meta_ac,
						   &new_eb_bh);

	} else {
		FUNC0();
	}

	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	eb = (struct ocfs2_extent_block *) new_eb_bh->b_data;
	/* ocfs2_create_new_meta_bhs() should create it right! */
	FUNC1(!FUNC2(eb));

	eb_el = &eb->h_list;
	root_el = et->et_root_el;

	status = FUNC15(handle, et->et_ci, new_eb_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	/* copy the root extent list data into the new extent block */
	eb_el->l_tree_depth = root_el->l_tree_depth;
	eb_el->l_next_free_rec = root_el->l_next_free_rec;
	for (i = 0; i < FUNC7(root_el->l_next_free_rec); i++)
		eb_el->l_recs[i] = root_el->l_recs[i];

	FUNC16(handle, new_eb_bh);

	status = FUNC12(handle, et,
					      OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	new_clusters = FUNC18(eb_el);

	/* update root_bh now */
	FUNC6(&root_el->l_tree_depth, 1);
	root_el->l_recs[0].e_cpos = 0;
	root_el->l_recs[0].e_blkno = eb->h_blkno;
	root_el->l_recs[0].e_int_clusters = FUNC5(new_clusters);
	for (i = 1; i < FUNC7(root_el->l_next_free_rec); i++)
		FUNC9(&root_el->l_recs[i], 0, sizeof(struct ocfs2_extent_rec));
	root_el->l_next_free_rec = FUNC4(1);

	/* If this is our 1st tree depth shift, then last_eb_blk
	 * becomes the allocated extent block */
	if (root_el->l_tree_depth == FUNC4(1))
		FUNC13(et, FUNC8(eb->h_blkno));

	FUNC16(handle, et->et_root_bh);

	*ret_new_eb_bh = new_eb_bh;
	new_eb_bh = NULL;
	status = 0;
bail:
	FUNC3(new_eb_bh);

	return status;
}