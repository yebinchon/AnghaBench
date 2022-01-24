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
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long long) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 

int FUNC17(struct ocfs2_super *osb, u64 block,
			   unsigned int nr, struct buffer_head *bhs[])
{
	int status = 0;
	unsigned int i;
	struct buffer_head *bh;
	int new_bh = 0;

	FUNC12((unsigned long long)block, nr);

	if (!nr)
		goto bail;

	/* Don't put buffer head and re-assign it to NULL if it is allocated
	 * outside since the caller can't be aware of this alternation!
	 */
	new_bh = (bhs[0] == NULL);

	for (i = 0 ; i < nr ; i++) {
		if (bhs[i] == NULL) {
			bhs[i] = FUNC10(osb->sb, block++);
			if (bhs[i] == NULL) {
				status = -ENOMEM;
				FUNC8(status);
				break;
			}
		}
		bh = bhs[i];

		if (FUNC2(bh)) {
			FUNC13(
					(unsigned long long)bh->b_blocknr);
			continue;
		}

		if (FUNC1(bh)) {
			/* This should probably be a BUG, or
			 * at least return an error. */
			FUNC7(ML_ERROR,
			     "trying to sync read a dirty "
			     "buffer! (blocknr = %llu), skipping\n",
			     (unsigned long long)bh->b_blocknr);
			continue;
		}

		FUNC6(bh);
		if (FUNC2(bh)) {
#ifdef CATCH_BH_JBD_RACES
			mlog(ML_ERROR,
			     "block %llu had the JBD bit set "
			     "while I was in lock_buffer!",
			     (unsigned long long)bh->b_blocknr);
			BUG();
#else
			FUNC15(bh);
			continue;
#endif
		}

		FUNC5(bh); /* for end_buffer_read_sync() */
		bh->b_end_io = end_buffer_read_sync;
		FUNC11(REQ_OP_READ, 0, bh);
	}

read_failure:
	for (i = nr; i > 0; i--) {
		bh = bhs[i - 1];

		if (FUNC14(status)) {
			if (new_bh && bh) {
				/* If middle bh fails, let previous bh
				 * finish its read and then put it to
				 * aovoid bh leak
				 */
				if (!FUNC2(bh))
					FUNC16(bh);
				FUNC9(bh);
				bhs[i - 1] = NULL;
			} else if (bh && FUNC3(bh)) {
				FUNC4(bh);
			}
			continue;
		}

		/* No need to wait on the buffer if it's managed by JBD. */
		if (!FUNC2(bh))
			FUNC16(bh);

		if (!FUNC3(bh)) {
			/* Status won't be cleared from here on out,
			 * so we can safely record this and loop back
			 * to cleanup the other buffers. */
			status = -EIO;
			goto read_failure;
		}
	}

bail:
	return status;
}