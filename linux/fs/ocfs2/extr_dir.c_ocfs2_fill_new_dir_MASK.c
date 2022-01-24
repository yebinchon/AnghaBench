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
struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int FUNC2 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*) ; 

int FUNC7(struct ocfs2_super *osb,
		       handle_t *handle,
		       struct inode *parent,
		       struct inode *inode,
		       struct buffer_head *fe_bh,
		       struct ocfs2_alloc_context *data_ac,
		       struct ocfs2_alloc_context *meta_ac)

{
	FUNC0(!FUNC6(osb) && data_ac == NULL);

	if (FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return FUNC4(osb, handle, parent, inode, fe_bh);

	if (FUNC5(osb))
		return FUNC2(osb, handle, parent, inode, fe_bh,
					     data_ac, meta_ac);

	return FUNC3(osb, handle, parent, inode, fe_bh,
				     data_ac, NULL);
}