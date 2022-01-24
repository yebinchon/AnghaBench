#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_list; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; TYPE_1__ id2; } ;
struct ocfs2_cow_context {int /*<<< orphan*/  data_et; int /*<<< orphan*/  get_clusters; int /*<<< orphan*/  cow_duplicate_clusters; struct buffer_head* ref_root_bh; struct ocfs2_refcount_tree* ref_tree; scalar_t__ cow_len; scalar_t__ cow_start; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_cow_context*) ; 
 struct ocfs2_cow_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  ocfs2_di_get_clusters ; 
 int /*<<< orphan*/  ocfs2_duplicate_clusters_by_page ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int FUNC14 (struct ocfs2_cow_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct inode *inode,
				   struct buffer_head *di_bh,
				   u32 cpos, u32 write_len, u32 max_cpos)
{
	int ret;
	u32 cow_start = 0, cow_len = 0;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_tree *ref_tree;
	struct ocfs2_cow_context *context = NULL;

	FUNC0(!FUNC11(inode));

	ret = FUNC13(inode, &di->id2.i_list,
					      cpos, write_len, max_cpos,
					      &cow_start, &cow_len);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	FUNC16(FUNC2(inode)->ip_blkno,
				      cpos, write_len, max_cpos,
				      cow_start, cow_len);

	FUNC0(cow_len == 0);

	context = FUNC6(sizeof(struct ocfs2_cow_context), GFP_NOFS);
	if (!context) {
		ret = -ENOMEM;
		FUNC8(ret);
		goto out;
	}

	ret = FUNC12(osb, FUNC7(di->i_refcount_loc),
				       1, &ref_tree, &ref_root_bh);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	context->inode = inode;
	context->cow_start = cow_start;
	context->cow_len = cow_len;
	context->ref_tree = ref_tree;
	context->ref_root_bh = ref_root_bh;
	context->cow_duplicate_clusters = ocfs2_duplicate_clusters_by_page;
	context->get_clusters = ocfs2_di_get_clusters;

	FUNC10(&context->data_et,
				      FUNC1(inode), di_bh);

	ret = FUNC14(context);
	if (ret)
		FUNC8(ret);

	/*
	 * truncate the extent map here since no matter whether we meet with
	 * any error during the action, we shouldn't trust cached extent map
	 * any more.
	 */
	FUNC9(inode, cow_start);

	FUNC15(osb, ref_tree, 1);
	FUNC4(ref_root_bh);
out:
	FUNC5(context);
	return ret;
}