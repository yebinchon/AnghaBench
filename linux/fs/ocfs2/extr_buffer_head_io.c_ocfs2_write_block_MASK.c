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
struct ocfs2_super {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int EROFS ; 
 scalar_t__ OCFS2_SUPER_BLOCK_BLKNO ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long long,struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 

int FUNC15(struct ocfs2_super *osb, struct buffer_head *bh,
		      struct ocfs2_caching_info *ci)
{
	int ret = 0;

	FUNC13((unsigned long long)bh->b_blocknr, ci);

	FUNC0(bh->b_blocknr < OCFS2_SUPER_BLOCK_BLKNO);
	FUNC0(FUNC1(bh));

	/* No need to check for a soft readonly file system here. non
	 * journalled writes are only ever done on system files which
	 * can get modified during recovery even if read-only. */
	if (FUNC7(osb)) {
		ret = -EROFS;
		FUNC6(ret);
		goto out;
	}

	FUNC8(ci);

	FUNC5(bh);
	FUNC11(bh);

	/* remove from dirty list before I/O. */
	FUNC3(bh);

	FUNC4(bh); /* for end_buffer_write_sync() */
	bh->b_end_io = end_buffer_write_sync;
	FUNC12(REQ_OP_WRITE, 0, bh);

	FUNC14(bh);

	if (FUNC2(bh)) {
		FUNC10(ci, bh);
	} else {
		/* We don't need to remove the clustered uptodate
		 * information for this bh as it's not marked locally
		 * uptodate. */
		ret = -EIO;
		FUNC6(ret);
	}

	FUNC9(ci);
out:
	return ret;
}