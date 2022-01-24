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
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_group_desc {struct ocfs2_extent_list bg_list; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_blkno; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/  ac_bh; int /*<<< orphan*/  ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static void FUNC7(handle_t *handle,
				   struct ocfs2_alloc_context *cluster_ac,
				   struct inode *alloc_inode,
				   struct buffer_head *bg_bh)
{
	int i, ret;
	struct ocfs2_group_desc *bg;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;

	if (!bg_bh)
		return;

	bg = (struct ocfs2_group_desc *)bg_bh->b_data;
	el = &bg->bg_list;
	for (i = 0; i < FUNC2(el->l_next_free_rec); i++) {
		rec = &el->l_recs[i];
		ret = FUNC5(handle, cluster_ac->ac_inode,
					  cluster_ac->ac_bh,
					  FUNC3(rec->e_blkno),
					  FUNC2(rec->e_leaf_clusters));
		if (ret)
			FUNC4(ret);
		/* Try all the clusters to free */
	}

	FUNC6(FUNC0(alloc_inode), bg_bh);
	FUNC1(bg_bh);
}