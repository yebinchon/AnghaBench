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
typedef  scalar_t__ u64 ;
typedef  unsigned int u32 ;
struct ocfs2_reflink_xattr_tree_args {int /*<<< orphan*/  old_bucket; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  xh_num_buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,unsigned int,scalar_t__,unsigned int,int /*<<< orphan*/ ,struct ocfs2_alloc_context*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,unsigned int,unsigned int*,unsigned int,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_reflink_xattr_tree_args*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC13(handle_t *handle,
				struct inode *inode,
				struct ocfs2_reflink_xattr_tree_args *args,
				struct ocfs2_extent_tree *et,
				struct ocfs2_alloc_context *meta_ac,
				struct ocfs2_alloc_context *data_ac,
				u64 blkno, u32 cpos, u32 len)
{
	int ret, first_inserted = 0;
	u32 p_cluster, num_clusters, reflink_cpos = 0;
	u64 new_blkno;
	unsigned int num_buckets, reflink_buckets;
	unsigned int bpc =
		FUNC11(FUNC0(inode->i_sb));

	ret = FUNC8(args->old_bucket, blkno);
	if (ret) {
		FUNC4(ret);
		goto out;
	}
	num_buckets = FUNC2(FUNC1(args->old_bucket)->xh_num_buckets);
	FUNC10(args->old_bucket);

	while (len && num_buckets) {
		ret = FUNC5(handle, data_ac,
					   1, &p_cluster, &num_clusters);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		new_blkno = FUNC6(inode->i_sb, p_cluster);
		reflink_buckets = FUNC3(num_buckets, bpc * num_clusters);

		ret = FUNC9(handle, blkno,
						 new_blkno, num_clusters,
						 &reflink_cpos, reflink_buckets,
						 meta_ac, data_ac, args);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		/*
		 * For the 1st allocated cluster, we make it use the same cpos
		 * so that the xattr tree looks the same as the original one
		 * in the most case.
		 */
		if (!first_inserted) {
			reflink_cpos = cpos;
			first_inserted = 1;
		}
		ret = FUNC7(handle, et, reflink_cpos, new_blkno,
					  num_clusters, 0, meta_ac);
		if (ret)
			FUNC4(ret);

		FUNC12((unsigned long long)new_blkno,
						  num_clusters, reflink_cpos);

		len -= num_clusters;
		blkno += FUNC6(inode->i_sb, num_clusters);
		num_buckets -= reflink_buckets;
	}
out:
	return ret;
}