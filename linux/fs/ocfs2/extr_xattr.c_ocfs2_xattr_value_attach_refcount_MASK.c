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
typedef  scalar_t__ u32 ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_xattr_value_root {struct ocfs2_extent_list xr_list; int /*<<< orphan*/  xr_clusters; } ;
struct ocfs2_post_refcount {int dummy; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,scalar_t__,scalar_t__,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_post_refcount*) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,struct ocfs2_extent_list*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
				struct ocfs2_xattr_value_root *xv,
				struct ocfs2_extent_tree *value_et,
				struct ocfs2_caching_info *ref_ci,
				struct buffer_head *ref_root_bh,
				struct ocfs2_cached_dealloc_ctxt *dealloc,
				struct ocfs2_post_refcount *refcount)
{
	int ret = 0;
	u32 clusters = FUNC1(xv->xr_clusters);
	u32 cpos, p_cluster, num_clusters;
	struct ocfs2_extent_list *el = &xv->xr_list;
	unsigned int ext_flags;

	cpos = 0;
	while (cpos < clusters) {
		ret = FUNC4(inode, cpos, &p_cluster,
					       &num_clusters, el, &ext_flags);
		if (ret) {
			FUNC2(ret);
			break;
		}

		cpos += num_clusters;
		if ((ext_flags & OCFS2_EXT_REFCOUNTED))
			continue;

		FUNC0(!p_cluster);

		ret = FUNC3(inode, value_et,
					      ref_ci, ref_root_bh,
					      cpos - num_clusters,
					      p_cluster, num_clusters,
					      dealloc, refcount);
		if (ret) {
			FUNC2(ret);
			break;
		}
	}

	return ret;
}