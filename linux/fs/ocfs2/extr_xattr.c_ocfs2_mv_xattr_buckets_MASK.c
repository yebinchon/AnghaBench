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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {TYPE_1__* xh_entries; int /*<<< orphan*/  xh_num_buckets; } ;
struct TYPE_3__ {int /*<<< orphan*/  xe_name_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct ocfs2_xattr_bucket*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_xattr_bucket*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*) ; 
 struct ocfs2_xattr_bucket* FUNC14 (struct inode*) ; 
 int FUNC15 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, handle_t *handle,
				  u64 src_blk, u64 last_blk, u64 to_blk,
				  unsigned int start_bucket,
				  u32 *first_hash)
{
	int i, ret, credits;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	int blks_per_bucket = FUNC7(inode->i_sb);
	int num_buckets = FUNC15(osb);
	struct ocfs2_xattr_bucket *old_first, *new_first;

	FUNC16((unsigned long long)last_blk,
				     (unsigned long long)to_blk);

	FUNC0(start_bucket >= num_buckets);
	if (start_bucket) {
		num_buckets -= start_bucket;
		last_blk += (start_bucket * blks_per_bucket);
	}

	/* The first bucket of the original extent */
	old_first = FUNC14(inode);
	/* The first bucket of the new extent */
	new_first = FUNC14(inode);
	if (!old_first || !new_first) {
		ret = -ENOMEM;
		FUNC6(ret);
		goto out;
	}

	ret = FUNC10(old_first, src_blk);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	/*
	 * We need to update the first bucket of the old extent and all
	 * the buckets going to the new extent.
	 */
	credits = ((num_buckets + 1) * blks_per_bucket);
	ret = FUNC9(handle, credits);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	ret = FUNC12(handle, old_first,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	for (i = 0; i < num_buckets; i++) {
		ret = FUNC8(inode, handle,
					    last_blk + (i * blks_per_bucket),
					    to_blk + (i * blks_per_bucket),
					    1);
		if (ret) {
			FUNC6(ret);
			goto out;
		}
	}

	/*
	 * Get the new bucket ready before we dirty anything
	 * (This actually shouldn't fail, because we already dirtied
	 * it once in ocfs2_cp_xattr_bucket()).
	 */
	ret = FUNC10(new_first, to_blk);
	if (ret) {
		FUNC6(ret);
		goto out;
	}
	ret = FUNC12(handle, new_first,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	/* Now update the headers */
	FUNC4(&FUNC2(old_first)->xh_num_buckets, -num_buckets);
	FUNC13(handle, old_first);

	FUNC2(new_first)->xh_num_buckets = FUNC3(num_buckets);
	FUNC13(handle, new_first);

	if (first_hash)
		*first_hash = FUNC5(FUNC2(new_first)->xh_entries[0].xe_name_hash);

out:
	FUNC11(new_first);
	FUNC11(old_first);
	return ret;
}