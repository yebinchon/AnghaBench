#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lru_lock; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NR_MLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 TYPE_1__* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

unsigned int FUNC14(struct page *page)
{
	int nr_pages;
	pg_data_t *pgdat = FUNC10(page);

	/* For try_to_munlock() and to serialize with page migration */
	FUNC0(!FUNC1(page));

	FUNC4(FUNC2(page), page);

	/*
	 * Serialize with any parallel __split_huge_page_refcount() which
	 * might otherwise copy PageMlocked to part of the tail pages before
	 * we clear it in the head page. It also stabilizes hpage_nr_pages().
	 */
	FUNC12(&pgdat->lru_lock);

	if (!FUNC3(page)) {
		/* Potentially, PTE-mapped THP: do not skip the rest PTEs */
		nr_pages = 1;
		goto unlock_out;
	}

	nr_pages = FUNC9(page);
	FUNC5(FUNC11(page), NR_MLOCK, -nr_pages);

	if (FUNC6(page, true)) {
		FUNC13(&pgdat->lru_lock);
		FUNC7(page);
		goto out;
	}
	FUNC8(page);

unlock_out:
	FUNC13(&pgdat->lru_lock);

out:
	return nr_pages - 1;
}