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
typedef  size_t u16 ;
struct ocfs2_xattr_header {void* xh_count; void* xh_free_start; struct ocfs2_xattr_entry* xh_entries; void* xh_name_value_len; } ;
struct ocfs2_xattr_entry {void* xe_name_offset; } ;
struct ocfs2_xattr_bucket {int bu_blocks; } ;
struct inode {TYPE_1__* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {size_t s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 size_t OCFS2_XATTR_BUCKET_SIZE ; 
 scalar_t__ FUNC0 (struct ocfs2_xattr_bucket*) ; 
 char* FUNC1 (struct ocfs2_xattr_bucket*,int) ; 
 int /*<<< orphan*/  cmp_xe ; 
 int /*<<< orphan*/  cmp_xe_offset ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 size_t FUNC11 (struct ocfs2_xattr_entry*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_xe ; 
 int /*<<< orphan*/  FUNC15 (unsigned long long,int,size_t,int) ; 

__attribute__((used)) static int FUNC16(struct inode *inode,
				     handle_t *handle,
				     struct ocfs2_xattr_bucket *bucket)
{
	int ret, i;
	size_t end, offset, len;
	struct ocfs2_xattr_header *xh;
	char *entries, *buf, *bucket_buf = NULL;
	u64 blkno = FUNC0(bucket);
	u16 xh_free_start;
	size_t blocksize = inode->i_sb->s_blocksize;
	struct ocfs2_xattr_entry *xe;

	/*
	 * In order to make the operation more efficient and generic,
	 * we copy all the blocks into a contiguous memory and do the
	 * defragment there, so if anything is error, we will not touch
	 * the real block.
	 */
	bucket_buf = FUNC4(OCFS2_XATTR_BUCKET_SIZE, GFP_NOFS);
	if (!bucket_buf) {
		ret = -EIO;
		goto out;
	}

	buf = bucket_buf;
	for (i = 0; i < bucket->bu_blocks; i++, buf += blocksize)
		FUNC6(buf, FUNC1(bucket, i), blocksize);

	ret = FUNC12(handle, bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC10(ret);
		goto out;
	}

	xh = (struct ocfs2_xattr_header *)bucket_buf;
	entries = (char *)xh->xh_entries;
	xh_free_start = FUNC5(xh->xh_free_start);

	FUNC15(
	     (unsigned long long)blkno, FUNC5(xh->xh_count),
	     xh_free_start, FUNC5(xh->xh_name_value_len));

	/*
	 * sort all the entries by their offset.
	 * the largest will be the first, so that we can
	 * move them to the end one by one.
	 */
	FUNC14(entries, FUNC5(xh->xh_count),
	     sizeof(struct ocfs2_xattr_entry),
	     cmp_xe_offset, swap_xe);

	/* Move all name/values to the end of the bucket. */
	xe = xh->xh_entries;
	end = OCFS2_XATTR_BUCKET_SIZE;
	for (i = 0; i < FUNC5(xh->xh_count); i++, xe++) {
		offset = FUNC5(xe->xe_name_offset);
		len = FUNC11(xe);

		/*
		 * We must make sure that the name/value pair
		 * exist in the same block. So adjust end to
		 * the previous block end if needed.
		 */
		if (((end - len) / blocksize !=
			(end - 1) / blocksize))
			end = end - end % blocksize;

		if (end > offset + len) {
			FUNC7(bucket_buf + end - len,
				bucket_buf + offset, len);
			xe->xe_name_offset = FUNC2(end - len);
		}

		FUNC9(end < offset + len, "Defrag check failed for "
				"bucket %llu\n", (unsigned long long)blkno);

		end -= len;
	}

	FUNC9(xh_free_start > end, "Defrag check failed for "
			"bucket %llu\n", (unsigned long long)blkno);

	if (xh_free_start == end)
		goto out;

	FUNC8(bucket_buf + xh_free_start, 0, end - xh_free_start);
	xh->xh_free_start = FUNC2(end);

	/* sort the entries by their name_hash. */
	FUNC14(entries, FUNC5(xh->xh_count),
	     sizeof(struct ocfs2_xattr_entry),
	     cmp_xe, swap_xe);

	buf = bucket_buf;
	for (i = 0; i < bucket->bu_blocks; i++, buf += blocksize)
		FUNC6(FUNC1(bucket, i), buf, blocksize);
	FUNC13(handle, bucket);

out:
	FUNC3(bucket_buf);
	return ret;
}