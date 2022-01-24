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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 

int FUNC3(struct ocfs2_super *osb,
			 struct inode *inode,
			 u32 *logical_offset,
			 u32 clusters_to_add,
			 int mark_unwritten,
			 struct buffer_head *fe_bh,
			 handle_t *handle,
			 struct ocfs2_alloc_context *data_ac,
			 struct ocfs2_alloc_context *meta_ac,
			 enum ocfs2_alloc_restarted *reason_ret)
{
	int ret;
	struct ocfs2_extent_tree et;

	FUNC2(&et, FUNC0(inode), fe_bh);
	ret = FUNC1(handle, &et, logical_offset,
					  clusters_to_add, mark_unwritten,
					  data_ac, meta_ac, reason_ret);

	return ret;
}