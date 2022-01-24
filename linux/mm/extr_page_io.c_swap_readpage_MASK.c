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
struct swap_info_struct {int flags; int /*<<< orphan*/  bdev; struct file* swap_file; } ;
struct page {int dummy; } ;
struct gendisk {int /*<<< orphan*/  queue; } ;
struct file {struct address_space* f_mapping; } ;
struct bio {int /*<<< orphan*/  bi_private; int /*<<< orphan*/  bi_opf; struct gendisk* bi_disk; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_2__ {int (* readpage ) (struct file*,struct page*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PSWPIN ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_HIPRI ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int SWP_FS ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC5 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  end_swap_bio_read ; 
 scalar_t__ FUNC13 (struct page*) ; 
 struct bio* FUNC14 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 struct swap_info_struct* FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct file*,struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct bio*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 scalar_t__ FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 

int FUNC25(struct page *page, bool synchronous)
{
	struct bio *bio;
	int ret = 0;
	struct swap_info_struct *sis = FUNC17(page);
	blk_qc_t qc;
	struct gendisk *disk;

	FUNC5(!FUNC1(page) && !synchronous, page);
	FUNC5(!FUNC0(page), page);
	FUNC5(FUNC2(page), page);
	if (FUNC13(page) == 0) {
		FUNC4(page);
		FUNC24(page);
		goto out;
	}

	if (sis->flags & SWP_FS) {
		struct file *swap_file = sis->swap_file;
		struct address_space *mapping = swap_file->f_mapping;

		ret = mapping->a_ops->readpage(swap_file, page);
		if (!ret)
			FUNC12(PSWPIN);
		return ret;
	}

	ret = FUNC7(sis->bdev, FUNC21(page), page);
	if (!ret) {
		if (FUNC23(page)) {
			FUNC22(page);
			FUNC24(page);
		}

		FUNC12(PSWPIN);
		return 0;
	}

	ret = 0;
	bio = FUNC14(GFP_KERNEL, page, end_swap_bio_read);
	if (bio == NULL) {
		FUNC24(page);
		ret = -ENOMEM;
		goto out;
	}
	disk = bio->bi_disk;
	/*
	 * Keep this task valid during swap readpage because the oom killer may
	 * attempt to access it in the page fault retry time check.
	 */
	FUNC10(bio, REQ_OP_READ, 0);
	if (synchronous) {
		bio->bi_opf |= REQ_HIPRI;
		FUNC15(current);
		bio->bi_private = current;
	}
	FUNC12(PSWPIN);
	FUNC8(bio);
	qc = FUNC20(bio);
	while (synchronous) {
		FUNC18(TASK_UNINTERRUPTIBLE);
		if (!FUNC3(bio->bi_private))
			break;

		if (!FUNC11(disk->queue, qc, true))
			FUNC16();
	}
	FUNC6(TASK_RUNNING);
	FUNC9(bio);

out:
	return ret;
}