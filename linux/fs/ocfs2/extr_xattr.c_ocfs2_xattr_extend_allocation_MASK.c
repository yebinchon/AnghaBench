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
typedef  scalar_t__ u32 ;
struct ocfs2_xattr_value_buf {int (* vb_access ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* vb_xv; int /*<<< orphan*/  vb_bh; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  meta_ac; int /*<<< orphan*/  data_ac; int /*<<< orphan*/ * handle; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;
struct TYPE_2__ {int /*<<< orphan*/  xr_list; int /*<<< orphan*/  xr_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int RESTART_META ; 
 int RESTART_NONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct ocfs2_xattr_value_buf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
					 u32 clusters_to_add,
					 struct ocfs2_xattr_value_buf *vb,
					 struct ocfs2_xattr_set_ctxt *ctxt)
{
	int status = 0, credits;
	handle_t *handle = ctxt->handle;
	enum ocfs2_alloc_restarted why;
	u32 prev_clusters, logical_start = FUNC2(vb->vb_xv->xr_clusters);
	struct ocfs2_extent_tree et;

	FUNC7(&et, FUNC1(inode), vb);

	while (clusters_to_add) {
		FUNC10(clusters_to_add);

		status = vb->vb_access(handle, FUNC1(inode), vb->vb_bh,
				       OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC3(status);
			break;
		}

		prev_clusters = FUNC2(vb->vb_xv->xr_clusters);
		status = FUNC4(handle,
						     &et,
						     &logical_start,
						     clusters_to_add,
						     0,
						     ctxt->data_ac,
						     ctxt->meta_ac,
						     &why);
		if ((status < 0) && (status != -EAGAIN)) {
			if (status != -ENOSPC)
				FUNC3(status);
			break;
		}

		FUNC8(handle, vb->vb_bh);

		clusters_to_add -= FUNC2(vb->vb_xv->xr_clusters) -
					 prev_clusters;

		if (why != RESTART_NONE && clusters_to_add) {
			/*
			 * We can only fail in case the alloc file doesn't give
			 * up enough clusters.
			 */
			FUNC0(why == RESTART_META);

			credits = FUNC5(inode->i_sb,
							    &vb->vb_xv->xr_list);
			status = FUNC6(handle, credits);
			if (status < 0) {
				status = -ENOMEM;
				FUNC3(status);
				break;
			}
		}
	}

	return status;
}