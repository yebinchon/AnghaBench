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
struct address_space {TYPE_1__* a_ops; } ;
typedef  int isolate_mode_t ;
struct TYPE_2__ {scalar_t__ migratepage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ISOLATE_ASYNC_MIGRATE ; 
 int ISOLATE_UNEVICTABLE ; 
 int ISOLATE_UNMAPPED ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 struct address_space* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct page *page, isolate_mode_t mode)
{
	int ret = -EINVAL;

	/* Only take pages on the LRU. */
	if (!FUNC2(page))
		return ret;

	/* Compaction should not handle unevictable pages but CMA can do so */
	if (FUNC3(page) && !(mode & ISOLATE_UNEVICTABLE))
		return ret;

	ret = -EBUSY;

	/*
	 * To minimise LRU disruption, the caller can indicate that it only
	 * wants to isolate pages it will be able to operate on without
	 * blocking - clean pages for the most part.
	 *
	 * ISOLATE_ASYNC_MIGRATE is used to indicate that it only wants to pages
	 * that it is possible to migrate without blocking
	 */
	if (mode & ISOLATE_ASYNC_MIGRATE) {
		/* All the caller can do on PageWriteback is block */
		if (FUNC4(page))
			return ret;

		if (FUNC1(page)) {
			struct address_space *mapping;
			bool migrate_dirty;

			/*
			 * Only pages without mappings or that have a
			 * ->migratepage callback are possible to migrate
			 * without blocking. However, we can be racing with
			 * truncation so it's necessary to lock the page
			 * to stabilise the mapping as truncation holds
			 * the page lock until after the page is removed
			 * from the page cache.
			 */
			if (!FUNC9(page))
				return ret;

			mapping = FUNC8(page);
			migrate_dirty = !mapping || mapping->a_ops->migratepage;
			FUNC10(page);
			if (!migrate_dirty)
				return ret;
		}
	}

	if ((mode & ISOLATE_UNMAPPED) && FUNC7(page))
		return ret;

	if (FUNC6(FUNC5(page))) {
		/*
		 * Be careful not to clear PageLRU until after we're
		 * sure the page is not being freed elsewhere -- the
		 * page release code relies on it.
		 */
		FUNC0(page);
		ret = 0;
	}

	return ret;
}