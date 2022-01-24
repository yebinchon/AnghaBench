#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ocfs2_xattr_search {struct ocfs2_xattr_bucket* bucket; TYPE_1__* header; int /*<<< orphan*/ * here; scalar_t__ base; scalar_t__ end; } ;
struct ocfs2_xattr_header {scalar_t__ xh_count; struct ocfs2_xattr_entry* xh_entries; scalar_t__ xh_num_buckets; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_name_hash; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_5__ {scalar_t__ s_blocksize; } ;
struct TYPE_4__ {int /*<<< orphan*/ * xh_entries; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct ocfs2_xattr_bucket*) ; 
 scalar_t__ FUNC2 (struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct ocfs2_xattr_bucket*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct inode*,struct ocfs2_xattr_bucket*,int,char const*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC9 (struct ocfs2_xattr_bucket*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_xattr_bucket*) ; 
 struct ocfs2_xattr_bucket* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,unsigned long long,int) ; 

__attribute__((used)) static int FUNC14(struct inode *inode,
				   int name_index,
				   const char *name,
				   u32 name_hash,
				   u64 p_blkno,
				   u32 first_hash,
				   u32 num_clusters,
				   struct ocfs2_xattr_search *xs)
{
	int ret, found = 0;
	struct ocfs2_xattr_header *xh = NULL;
	struct ocfs2_xattr_entry *xe = NULL;
	u16 index = 0;
	u16 blk_per_bucket = FUNC7(inode->i_sb);
	int low_bucket = 0, bucket, high_bucket;
	struct ocfs2_xattr_bucket *search;
	u64 blkno, lower_blkno = 0;

	search = FUNC11(inode);
	if (!search) {
		ret = -ENOMEM;
		FUNC6(ret);
		goto out;
	}

	ret = FUNC9(search, p_blkno);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	xh = FUNC3(search);
	high_bucket = FUNC4(xh->xh_num_buckets) - 1;
	while (low_bucket <= high_bucket) {
		FUNC12(search);

		bucket = (low_bucket + high_bucket) / 2;
		blkno = p_blkno + bucket * blk_per_bucket;
		ret = FUNC9(search, blkno);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		xh = FUNC3(search);
		xe = &xh->xh_entries[0];
		if (name_hash < FUNC5(xe->xe_name_hash)) {
			high_bucket = bucket - 1;
			continue;
		}

		/*
		 * Check whether the hash of the last entry in our
		 * bucket is larger than the search one. for an empty
		 * bucket, the last one is also the first one.
		 */
		if (xh->xh_count)
			xe = &xh->xh_entries[FUNC4(xh->xh_count) - 1];

		/* record lower_blkno which may be the insert place. */
		lower_blkno = blkno;

		if (name_hash > FUNC5(xe->xe_name_hash)) {
			low_bucket = bucket + 1;
			continue;
		}

		/* the searched xattr should reside in this bucket if exists. */
		ret = FUNC8(inode, search,
					      name_index, name, name_hash,
					      &index, &found);
		if (ret) {
			FUNC6(ret);
			goto out;
		}
		break;
	}

	/*
	 * Record the bucket we have found.
	 * When the xattr's hash value is in the gap of 2 buckets, we will
	 * always set it to the previous bucket.
	 */
	if (!lower_blkno)
		lower_blkno = p_blkno;

	/* This should be in cache - we just read it during the search */
	ret = FUNC9(xs->bucket, lower_blkno);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	xs->header = FUNC3(xs->bucket);
	xs->base = FUNC2(xs->bucket, 0);
	xs->end = xs->base + inode->i_sb->s_blocksize;

	if (found) {
		xs->here = &xs->header->xh_entries[index];
		FUNC13(FUNC0(inode)->ip_blkno,
			name, name_index, name_hash,
			(unsigned long long)FUNC1(xs->bucket),
			index);
	} else
		ret = -ENODATA;

out:
	FUNC10(search);
	return ret;
}