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
struct page {int dummy; } ;
struct hib_bio_batch {int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {struct hib_bio_batch* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int EFAULT ; 
 int GFP_NOIO ; 
 int PAGE_SIZE ; 
 int __GFP_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int,int) ; 
 int /*<<< orphan*/  hib_end_io ; 
 int /*<<< orphan*/  hib_resume_bdev ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int FUNC8 (struct bio*) ; 
 struct page* FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(int op, int op_flags, pgoff_t page_off, void *addr,
		struct hib_bio_batch *hb)
{
	struct page *page = FUNC9(addr);
	struct bio *bio;
	int error = 0;

	bio = FUNC2(GFP_NOIO | __GFP_HIGH, 1);
	bio->bi_iter.bi_sector = page_off * (PAGE_SIZE >> 9);
	FUNC4(bio, hib_resume_bdev);
	FUNC5(bio, op, op_flags);

	if (FUNC1(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
		FUNC6("Adding page to bio failed at %llu\n",
		       (unsigned long long)bio->bi_iter.bi_sector);
		FUNC3(bio);
		return -EFAULT;
	}

	if (hb) {
		bio->bi_end_io = hib_end_io;
		bio->bi_private = hb;
		FUNC0(&hb->count);
		FUNC7(bio);
	} else {
		error = FUNC8(bio);
		FUNC3(bio);
	}

	return error;
}