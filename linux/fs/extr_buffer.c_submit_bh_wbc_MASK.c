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
struct writeback_control {int dummy; } ;
struct buffer_head {int b_blocknr; int b_size; int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_end_io; } ;
struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {int bi_write_hint; struct buffer_head* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  enum rw_hint { ____Placeholder_rw_hint } rw_hint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int REQ_META ; 
 int REQ_OP_WRITE ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int,int) ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct buffer_head*) ; 
 int FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_bio_bh_io_sync ; 
 int /*<<< orphan*/  FUNC13 (int,struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct bio*) ; 
 scalar_t__ FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct writeback_control*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct writeback_control*,struct bio*) ; 

__attribute__((used)) static int FUNC18(int op, int op_flags, struct buffer_head *bh,
			 enum rw_hint write_hint, struct writeback_control *wbc)
{
	struct bio *bio;

	FUNC0(!FUNC7(bh));
	FUNC0(!FUNC8(bh));
	FUNC0(!bh->b_end_io);
	FUNC0(FUNC6(bh));
	FUNC0(FUNC11(bh));

	/*
	 * Only clear out a write error when rewriting
	 */
	if (FUNC15(bh) && (op == REQ_OP_WRITE))
		FUNC12(bh);

	/*
	 * from here on down, it's all bio -- do the initial mapping,
	 * submit_bio -> generic_make_request may further map this bio around
	 */
	bio = FUNC3(GFP_NOIO, 1);

	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
	FUNC4(bio, bh->b_bdev);
	bio->bi_write_hint = write_hint;

	FUNC2(bio, bh->b_page, bh->b_size, FUNC1(bh));
	FUNC0(bio->bi_iter.bi_size != bh->b_size);

	bio->bi_end_io = end_bio_bh_io_sync;
	bio->bi_private = bh;

	/* Take care of bh's that straddle the end of the device */
	FUNC13(op, bio);

	if (FUNC9(bh))
		op_flags |= REQ_META;
	if (FUNC10(bh))
		op_flags |= REQ_PRIO;
	FUNC5(bio, op, op_flags);

	if (wbc) {
		FUNC17(wbc, bio);
		FUNC16(wbc, bh->b_page, bh->b_size);
	}

	FUNC14(bio);
	return 0;
}