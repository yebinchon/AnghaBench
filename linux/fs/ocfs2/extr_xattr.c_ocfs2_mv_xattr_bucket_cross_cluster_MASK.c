#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  xh_num_buckets; } ;
struct TYPE_4__ {scalar_t__ s_clustersize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ OCFS2_XATTR_BUCKET_SIZE ; 
 scalar_t__ FUNC2 (struct ocfs2_xattr_bucket*) ; 
 TYPE_2__* FUNC3 (struct ocfs2_xattr_bucket*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct super_block*) ; 
 int FUNC7 (struct super_block*,int) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int,int*) ; 
 int FUNC9 (struct ocfs2_xattr_bucket*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_xattr_bucket*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
					       handle_t *handle,
					       struct ocfs2_xattr_bucket *first,
					       struct ocfs2_xattr_bucket *target,
					       u64 new_blkno,
					       u32 num_clusters,
					       u32 *first_hash)
{
	int ret;
	struct super_block *sb = inode->i_sb;
	int blks_per_bucket = FUNC6(sb);
	int num_buckets = FUNC11(FUNC1(sb));
	int to_move = num_buckets / 2;
	u64 src_blkno;
	u64 last_cluster_blkno = FUNC2(first) +
		((num_clusters - 1) * FUNC7(sb, 1));

	FUNC0(FUNC4(FUNC3(first)->xh_num_buckets) < num_buckets);
	FUNC0(OCFS2_XATTR_BUCKET_SIZE == FUNC1(sb)->s_clustersize);

	FUNC12(
				(unsigned long long)last_cluster_blkno,
				(unsigned long long)new_blkno);

	ret = FUNC8(inode, handle, FUNC2(first),
				     last_cluster_blkno, new_blkno,
				     to_move, first_hash);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	/* This is the first bucket that got moved */
	src_blkno = last_cluster_blkno + (to_move * blks_per_bucket);

	/*
	 * If the target bucket was part of the moved buckets, we need to
	 * update first and target.
	 */
	if (FUNC2(target) >= src_blkno) {
		/* Find the block for the new target bucket */
		src_blkno = new_blkno +
			(FUNC2(target) - src_blkno);

		FUNC10(first);
		FUNC10(target);

		/*
		 * These shouldn't fail - the buffers are in the
		 * journal from ocfs2_cp_xattr_bucket().
		 */
		ret = FUNC9(first, new_blkno);
		if (ret) {
			FUNC5(ret);
			goto out;
		}
		ret = FUNC9(target, src_blkno);
		if (ret)
			FUNC5(ret);

	}

out:
	return ret;
}