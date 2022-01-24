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
struct page {int /*<<< orphan*/  mapping; } ;
struct anon_vma {int dummy; } ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int MIGRATEPAGE_SUCCESS ; 
 int MIGRATE_ASYNC ; 
#define  MIGRATE_SYNC 129 
#define  MIGRATE_SYNC_NO_COPY 128 
 int PF_MEMALLOC ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_MLOCK ; 
 int TTU_MIGRATION ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*,struct page*,int) ; 
 struct anon_vma* FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

__attribute__((used)) static int FUNC20(struct page *page, struct page *newpage,
				int force, enum migrate_mode mode)
{
	int rc = -EAGAIN;
	int page_was_mapped = 0;
	struct anon_vma *anon_vma = NULL;
	bool is_lru = !FUNC4(page);

	if (!FUNC16(page)) {
		if (!force || mode == MIGRATE_ASYNC)
			goto out;

		/*
		 * It's not safe for direct compaction to call lock_page.
		 * For example, during page readahead pages are added locked
		 * to the LRU. Later, when the IO completes the pages are
		 * marked uptodate and unlocked. However, the queueing
		 * could be merging multiple pages for one bio (e.g.
		 * mpage_readpages). If an allocation happens for the
		 * second or third page, the process can end up locking
		 * the same page twice and deadlocking. Rather than
		 * trying to be clever about what pages can be locked,
		 * avoid the use of lock_page for direct compaction
		 * altogether.
		 */
		if (current->flags & PF_MEMALLOC)
			goto out;

		FUNC5(page);
	}

	if (FUNC2(page)) {
		/*
		 * Only in the case of a full synchronous migration is it
		 * necessary to wait for PageWriteback. In the async case,
		 * the retry loop is too short and in the sync-light case,
		 * the overhead of stalling is too much
		 */
		switch (mode) {
		case MIGRATE_SYNC:
		case MIGRATE_SYNC_NO_COPY:
			break;
		default:
			rc = -EBUSY;
			goto out_unlock;
		}
		if (!force)
			goto out_unlock;
		FUNC19(page);
	}

	/*
	 * By try_to_unmap(), page->mapcount goes down to 0 here. In this case,
	 * we cannot notice that anon_vma is freed while we migrates a page.
	 * This get_anon_vma() delays freeing anon_vma pointer until the end
	 * of migration. File cache pages are no problem because of page_lock()
	 * File Caches may use write_page() or lock_page() in migration, then,
	 * just care Anon page here.
	 *
	 * Only page_get_anon_vma() understands the subtleties of
	 * getting a hold on an anon_vma from outside one of its mms.
	 * But if we cannot get anon_vma, then we won't need it anyway,
	 * because that implies that the anon page is no longer mapped
	 * (and cannot be remapped so long as we hold the page lock).
	 */
	if (FUNC0(page) && !FUNC1(page))
		anon_vma = FUNC7(page);

	/*
	 * Block others from accessing the new page when we get around to
	 * establishing additional references. We are usually the only one
	 * holding a reference to newpage at this point. We used to have a BUG
	 * here if trylock_page(newpage) fails, but would like to allow for
	 * cases where there might be a race with the previous use of newpage.
	 * This is much like races on refcount of oldpage: just don't BUG().
	 */
	if (FUNC17(!FUNC16(newpage)))
		goto out_unlock;

	if (FUNC17(!is_lru)) {
		rc = FUNC6(newpage, page, mode);
		goto out_unlock_both;
	}

	/*
	 * Corner case handling:
	 * 1. When a new swap-cache page is read into, it is added to the LRU
	 * and treated as swapcache but it has no rmap yet.
	 * Calling try_to_unmap() against a page->mapping==NULL page will
	 * trigger a BUG.  So handle it here.
	 * 2. An orphaned page (see truncate_complete_page) might have
	 * fs-private metadata. The page can be picked up due to memory
	 * offlining.  Everywhere else except page reclaim, the page is
	 * invisible to the vm, so the page can not be migrated.  So try to
	 * free the metadata, so the page can be freed.
	 */
	if (!page->mapping) {
		FUNC3(FUNC0(page), page);
		if (FUNC8(page)) {
			FUNC14(page);
			goto out_unlock_both;
		}
	} else if (FUNC9(page)) {
		/* Establish migration ptes */
		FUNC3(FUNC0(page) && !FUNC1(page) && !anon_vma,
				page);
		FUNC15(page,
			TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);
		page_was_mapped = 1;
	}

	if (!FUNC9(page))
		rc = FUNC6(newpage, page, mode);

	if (page_was_mapped)
		FUNC13(page,
			rc == MIGRATEPAGE_SUCCESS ? newpage : page, false);

out_unlock_both:
	FUNC18(newpage);
out_unlock:
	/* Drop an anon_vma reference if we took one */
	if (anon_vma)
		FUNC10(anon_vma);
	FUNC18(page);
out:
	/*
	 * If migration is successful, decrease refcount of the newpage
	 * which will not free the page because new page owner increased
	 * refcounter. As well, if it is LRU page, add the page to LRU
	 * list in here. Use the old state of the isolated source page to
	 * determine if we migrated a LRU page. newpage was already unlocked
	 * and possibly modified by its owner - don't rely on the page
	 * state.
	 */
	if (rc == MIGRATEPAGE_SUCCESS) {
		if (FUNC17(!is_lru))
			FUNC11(newpage);
		else
			FUNC12(newpage);
	}

	return rc;
}