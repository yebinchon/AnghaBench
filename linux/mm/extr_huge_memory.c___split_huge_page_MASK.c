#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ swp_entry_t ;
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct lruvec {int dummy; } ;
struct list_head {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_10__ {int /*<<< orphan*/  lru_lock; } ;
typedef  TYPE_3__ pg_data_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_pages; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SHMEM ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int HPAGE_PMD_NR ; 
 int /*<<< orphan*/  HPAGE_PMD_ORDER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int,struct lruvec*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long,struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC9 (struct page*) ; 
 struct lruvec* FUNC10 (struct page*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 TYPE_3__* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct page*,int /*<<< orphan*/ ) ; 
 struct address_space* FUNC21 (TYPE_2__) ; 
 unsigned long FUNC22 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC26(struct page *page, struct list_head *list,
		pgoff_t end, unsigned long flags)
{
	struct page *head = FUNC9(page);
	pg_data_t *pgdat = FUNC12(head);
	struct lruvec *lruvec;
	struct address_space *swap_cache = NULL;
	unsigned long offset = 0;
	int i;

	lruvec = FUNC10(head, pgdat);

	/* complete memcg works before add pages to LRU */
	FUNC11(head);

	if (FUNC3(head) && FUNC5(head)) {
		swp_entry_t entry = { .val = FUNC13(head) };

		offset = FUNC22(entry);
		swap_cache = FUNC21(entry);
		FUNC24(&swap_cache->i_pages);
	}

	for (i = HPAGE_PMD_NR - 1; i >= 1; i--) {
		FUNC7(head, i, lruvec, list);
		/* Some pages can be beyond i_size: drop them from page cache */
		if (head[i].index >= end) {
			FUNC1(head + i);
			FUNC6(head + i, NULL);
			if (FUNC2(CONFIG_SHMEM) && FUNC4(head))
				FUNC18(head->mapping->host, 1);
			FUNC16(head + i);
		} else if (!FUNC3(page)) {
			FUNC8(&head->mapping->i_pages, head[i].index,
					head + i, 0);
		} else if (swap_cache) {
			FUNC8(&swap_cache->i_pages, offset + i,
					head + i, 0);
		}
	}

	FUNC0(head);

	FUNC20(head, HPAGE_PMD_ORDER);

	/* See comment in __split_huge_page_tail() */
	if (FUNC3(head)) {
		/* Additional pin to swap cache */
		if (FUNC5(head)) {
			FUNC14(head, 2);
			FUNC25(&swap_cache->i_pages);
		} else {
			FUNC15(head);
		}
	} else {
		/* Additional pin to page cache */
		FUNC14(head, 2);
		FUNC25(&head->mapping->i_pages);
	}

	FUNC19(&pgdat->lru_lock, flags);

	FUNC17(head);

	for (i = 0; i < HPAGE_PMD_NR; i++) {
		struct page *subpage = head + i;
		if (subpage == page)
			continue;
		FUNC23(subpage);

		/*
		 * Subpages may be freed if there wasn't any mapping
		 * like if add_to_swap() is running on a lru page that
		 * had its mapping zapped. And freeing these pages
		 * requires taking the lru_lock so we do the put_page
		 * of the tail pages after the split is complete.
		 */
		FUNC16(subpage);
	}
}