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
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; scalar_t__ bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 struct page* FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

void FUNC10(struct bio *bio)
{
	struct page *page = FUNC5(bio);

	if (bio->bi_status) {
		FUNC3(page);
		/*
		 * We failed to write the page out to swap-space.
		 * Re-dirty the page in order to avoid it being reclaimed.
		 * Also print a dire warning that things will go BAD (tm)
		 * very quickly.
		 *
		 * Also clear PG_reclaim to avoid rotate_reclaimable_page()
		 */
		FUNC9(page);
		FUNC8("Write-error on swap-device (%u:%u:%llu)\n",
			 FUNC1(FUNC4(bio)), FUNC2(FUNC4(bio)),
			 (unsigned long long)bio->bi_iter.bi_sector);
		FUNC0(page);
	}
	FUNC7(page);
	FUNC6(bio);
}