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
struct hib_bio_batch {int /*<<< orphan*/  wait; int /*<<< orphan*/  count; scalar_t__ error; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {scalar_t__ bi_status; TYPE_1__ bi_iter; struct hib_bio_batch* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 struct page* FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 scalar_t__ clean_pages_on_read ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct bio *bio)
{
	struct hib_bio_batch *hb = bio->bi_private;
	struct page *page = FUNC5(bio);

	if (bio->bi_status) {
		FUNC9("Read-error on swap-device (%u:%u:%Lu)\n",
			 FUNC0(FUNC4(bio)), FUNC1(FUNC4(bio)),
			 (unsigned long long)bio->bi_iter.bi_sector);
	}

	if (FUNC3(bio) == WRITE)
		FUNC10(page);
	else if (clean_pages_on_read)
		FUNC7((unsigned long)FUNC8(page),
				   (unsigned long)FUNC8(page) + PAGE_SIZE);

	if (bio->bi_status && !hb->error)
		hb->error = bio->bi_status;
	if (FUNC2(&hb->count))
		FUNC11(&hb->wait);

	FUNC6(bio);
}