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
typedef  scalar_t__ u64 ;
typedef  struct super_block super_block ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_BH_IGNORE_CACHE ; 
 int OCFS2_BH_READAHEAD ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 scalar_t__ FUNC13 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 struct super_block* FUNC14 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC17 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 struct buffer_head* FUNC20 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_caching_info*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC24 (unsigned long long,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (unsigned long long,int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (struct buffer_head*) ; 

int FUNC30(struct ocfs2_caching_info *ci, u64 block, int nr,
		      struct buffer_head *bhs[], int flags,
		      int (*validate)(struct super_block *sb,
				      struct buffer_head *bh))
{
	int status = 0;
	int i, ignore_cache = 0;
	struct buffer_head *bh;
	struct super_block *sb = FUNC14(ci);
	int new_bh = 0;

	FUNC23(ci, (unsigned long long)block, nr, flags);

	FUNC1(!ci);
	FUNC1((flags & OCFS2_BH_READAHEAD) &&
	       (flags & OCFS2_BH_IGNORE_CACHE));

	if (bhs == NULL) {
		status = -EINVAL;
		FUNC11(status);
		goto bail;
	}

	if (nr < 0) {
		FUNC10(ML_ERROR, "asked to read %d blocks!\n", nr);
		status = -EINVAL;
		FUNC11(status);
		goto bail;
	}

	if (nr == 0) {
		status = 0;
		goto bail;
	}

	/* Don't put buffer head and re-assign it to NULL if it is allocated
	 * outside since the caller can't be aware of this alternation!
	 */
	new_bh = (bhs[0] == NULL);

	FUNC15(ci);
	for (i = 0 ; i < nr ; i++) {
		if (bhs[i] == NULL) {
			bhs[i] = FUNC20(sb, block++);
			if (bhs[i] == NULL) {
				FUNC16(ci);
				status = -ENOMEM;
				FUNC11(status);
				/* Don't forget to put previous bh! */
				break;
			}
		}
		bh = bhs[i];
		ignore_cache = (flags & OCFS2_BH_IGNORE_CACHE);

		/* There are three read-ahead cases here which we need to
		 * be concerned with. All three assume a buffer has
		 * previously been submitted with OCFS2_BH_READAHEAD
		 * and it hasn't yet completed I/O.
		 *
		 * 1) The current request is sync to disk. This rarely
		 *    happens these days, and never when performance
		 *    matters - the code can just wait on the buffer
		 *    lock and re-submit.
		 *
		 * 2) The current request is cached, but not
		 *    readahead. ocfs2_buffer_uptodate() will return
		 *    false anyway, so we'll wind up waiting on the
		 *    buffer lock to do I/O. We re-check the request
		 *    with after getting the lock to avoid a re-submit.
		 *
		 * 3) The current request is readahead (and so must
		 *    also be a caching one). We short circuit if the
		 *    buffer is locked (under I/O) and if it's in the
		 *    uptodate cache. The re-check from #2 catches the
		 *    case that the previous read-ahead completes just
		 *    before our is-it-in-flight check.
		 */

		if (!ignore_cache && !FUNC13(ci, bh)) {
			FUNC26(
			     (unsigned long long)bh->b_blocknr,
			     (unsigned long long)FUNC17(ci));
			/* We're using ignore_cache here to say
			 * "go to disk" */
			ignore_cache = 1;
		}

		FUNC24((unsigned long long)bh->b_blocknr,
			ignore_cache, FUNC3(bh), FUNC2(bh));

		if (FUNC3(bh)) {
			continue;
		}

		if (ignore_cache) {
			if (FUNC2(bh)) {
				/* This should probably be a BUG, or
				 * at least return an error. */
				continue;
			}

			/* A read-ahead request was made - if the
			 * buffer is already under read-ahead from a
			 * previously submitted request than we are
			 * done here. */
			if ((flags & OCFS2_BH_READAHEAD)
			    && FUNC12(ci, bh))
				continue;

			FUNC9(bh);
			if (FUNC3(bh)) {
#ifdef CATCH_BH_JBD_RACES
				mlog(ML_ERROR, "block %llu had the JBD bit set "
					       "while I was in lock_buffer!",
				     (unsigned long long)bh->b_blocknr);
				BUG();
#else
				FUNC28(bh);
				continue;
#endif
			}

			/* Re-check ocfs2_buffer_uptodate() as a
			 * previously read-ahead buffer may have
			 * completed I/O while we were waiting for the
			 * buffer lock. */
			if (!(flags & OCFS2_BH_IGNORE_CACHE)
			    && !(flags & OCFS2_BH_READAHEAD)
			    && FUNC13(ci, bh)) {
				FUNC28(bh);
				continue;
			}

			FUNC8(bh); /* for end_buffer_read_sync() */
			if (validate)
				FUNC21(bh);
			bh->b_end_io = end_buffer_read_sync;
			FUNC22(REQ_OP_READ, 0, bh);
			continue;
		}
	}

read_failure:
	for (i = (nr - 1); i >= 0; i--) {
		bh = bhs[i];

		if (!(flags & OCFS2_BH_READAHEAD)) {
			if (FUNC27(status)) {
				/* Clear the buffers on error including those
				 * ever succeeded in reading
				 */
				if (new_bh && bh) {
					/* If middle bh fails, let previous bh
					 * finish its read and then put it to
					 * aovoid bh leak
					 */
					if (!FUNC3(bh))
						FUNC29(bh);
					FUNC19(bh);
					bhs[i] = NULL;
				} else if (bh && FUNC5(bh)) {
					FUNC7(bh);
				}
				continue;
			}
			/* We know this can't have changed as we hold the
			 * owner sem. Avoid doing any work on the bh if the
			 * journal has it. */
			if (!FUNC3(bh))
				FUNC29(bh);

			if (!FUNC5(bh)) {
				/* Status won't be cleared from here on out,
				 * so we can safely record this and loop back
				 * to cleanup the other buffers. Don't need to
				 * remove the clustered uptodate information
				 * for this bh as it's not marked locally
				 * uptodate. */
				status = -EIO;
				FUNC6(bh);
				goto read_failure;
			}

			if (FUNC4(bh)) {
				/* We never set NeedsValidate if the
				 * buffer was held by the journal, so
				 * that better not have changed */
				FUNC1(FUNC3(bh));
				FUNC6(bh);
				status = validate(sb, bh);
				if (status)
					goto read_failure;
			}
		}

		/* Always set the buffer in the cache, even if it was
		 * a forced read, or read-ahead which hasn't yet
		 * completed. */
		FUNC18(ci, bh);
	}
	FUNC16(ci);

	FUNC25((unsigned long long)block, nr,
				    flags, ignore_cache);

bail:

	return status;
}