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
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_alloc_context*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct ocfs2_alloc_context*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_alloc_context**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC12 (struct ocfs2_super*,int) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
				   struct ocfs2_extent_tree *et,
				   struct ocfs2_caching_info *ref_ci,
				   struct buffer_head *ref_root_bh,
				   u32 cpos, u32 p_cluster, u32 num_clusters,
				   unsigned int ext_flags,
				   struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret;
	handle_t *handle;
	int credits = 0;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_alloc_context *meta_ac = NULL;

	ret = FUNC11(inode->i_sb,
					     p_cluster, num_clusters,
					     et, ref_ci,
					     ref_root_bh, &meta_ac,
					     NULL, &credits);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	handle = FUNC12(osb, credits);
	if (FUNC0(handle)) {
		ret = FUNC2(handle);
		FUNC4(ret);
		goto out;
	}

	ret = FUNC10(handle, et, cpos,
			FUNC5(inode->i_sb, p_cluster),
			num_clusters, ext_flags, meta_ac);
	if (ret) {
		FUNC4(ret);
		goto out_commit;
	}

	ret = FUNC9(handle, ref_ci, ref_root_bh,
				      p_cluster, num_clusters,
				      meta_ac, dealloc);
	if (ret) {
		FUNC4(ret);
		goto out_commit;
	}

	ret = FUNC3(inode,
		FUNC6(osb->sb, num_clusters));
	if (ret)
		FUNC4(ret);

out_commit:
	FUNC7(osb, handle);
out:
	if (meta_ac)
		FUNC8(meta_ac);
	return ret;
}