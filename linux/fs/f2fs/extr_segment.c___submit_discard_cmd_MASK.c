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
struct TYPE_3__ {int /*<<< orphan*/  max_discard_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
struct list_head {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct discard_policy {scalar_t__ type; unsigned int max_requests; scalar_t__ sync; } ;
struct discard_cmd_control {int /*<<< orphan*/  issued_discard; int /*<<< orphan*/  queued_discard; struct list_head wait_list; struct list_head fstrim_list; } ;
struct discard_cmd {scalar_t__ state; unsigned int start; unsigned int len; unsigned int lstart; int /*<<< orphan*/  list; int /*<<< orphan*/  queued; int /*<<< orphan*/  lock; int /*<<< orphan*/  bio_ref; struct block_device* bdev; } ;
struct block_device {int dummy; } ;
struct bio {int bi_opf; int /*<<< orphan*/  bi_end_io; struct discard_cmd* bi_private; } ;
typedef  unsigned int block_t ;
struct TYPE_4__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 scalar_t__ DPOLICY_FSTRIM ; 
 scalar_t__ D_PARTIAL ; 
 scalar_t__ D_PREP ; 
 void* D_SUBMIT ; 
 int EIO ; 
 int /*<<< orphan*/  FAULT_DISCARD ; 
 int /*<<< orphan*/  FS_DISCARD ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct f2fs_sb_info*) ; 
 int FUNC3 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio**) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,struct block_device*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC7 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f2fs_submit_discard_endio ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct bio*) ; 
 scalar_t__ FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct block_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC18(struct f2fs_sb_info *sbi,
						struct discard_policy *dpolicy,
						struct discard_cmd *dc,
						unsigned int *issued)
{
	struct block_device *bdev = dc->bdev;
	struct request_queue *q = FUNC7(bdev);
	unsigned int max_discard_blocks =
			FUNC1(q->limits.max_discard_sectors);
	struct discard_cmd_control *dcc = FUNC2(sbi)->dcc_info;
	struct list_head *wait_list = (dpolicy->type == DPOLICY_FSTRIM) ?
					&(dcc->fstrim_list) : &(dcc->wait_list);
	int flag = dpolicy->sync ? REQ_SYNC : 0;
	block_t lstart, start, len, total_len;
	int err = 0;

	if (dc->state != D_PREP)
		return 0;

	if (FUNC11(sbi, SBI_NEED_FSCK))
		return 0;

	FUNC17(bdev, dc->start, dc->len);

	lstart = dc->lstart;
	start = dc->start;
	len = dc->len;
	total_len = len;

	dc->len = 0;

	while (total_len && *issued < dpolicy->max_requests && !err) {
		struct bio *bio = NULL;
		unsigned long flags;
		bool last = true;

		if (len > max_discard_blocks) {
			len = max_discard_blocks;
			last = false;
		}

		(*issued)++;
		if (*issued == dpolicy->max_requests)
			last = true;

		dc->len += len;

		if (FUNC16(sbi, FAULT_DISCARD)) {
			FUNC9(FAULT_DISCARD);
			err = -EIO;
			goto submit;
		}
		err = FUNC3(bdev,
					FUNC0(start),
					FUNC0(len),
					GFP_NOFS, 0, &bio);
submit:
		if (err) {
			FUNC13(&dc->lock, flags);
			if (dc->state == D_PARTIAL)
				dc->state = D_SUBMIT;
			FUNC14(&dc->lock, flags);

			break;
		}

		FUNC8(sbi, !bio);

		/*
		 * should keep before submission to avoid D_DONE
		 * right away
		 */
		FUNC13(&dc->lock, flags);
		if (last)
			dc->state = D_SUBMIT;
		else
			dc->state = D_PARTIAL;
		dc->bio_ref++;
		FUNC14(&dc->lock, flags);

		FUNC6(&dcc->queued_discard);
		dc->queued++;
		FUNC12(&dc->list, wait_list);

		/* sanity check on discard range */
		FUNC4(sbi, lstart, lstart + len);

		bio->bi_private = dc;
		bio->bi_end_io = f2fs_submit_discard_endio;
		bio->bi_opf |= flag;
		FUNC15(bio);

		FUNC6(&dcc->issued_discard);

		FUNC10(sbi, FS_DISCARD, 1);

		lstart += len;
		start += len;
		total_len -= len;
		len = total_len;
	}

	if (!err && len)
		FUNC5(sbi, bdev, lstart, start, len);
	return err;
}