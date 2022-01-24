#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stable_node {int /*<<< orphan*/  kpfn; } ;
struct page {int /*<<< orphan*/  mapping; } ;
typedef  enum get_ksm_page_flags { ____Placeholder_get_ksm_page_flags } get_ksm_page_flags ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int GET_KSM_PAGE_LOCK ; 
 int GET_KSM_PAGE_NOLOCK ; 
 int GET_KSM_PAGE_TRYLOCK ; 
 unsigned long PAGE_MAPPING_KSM ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct stable_node*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static struct page *FUNC12(struct stable_node *stable_node,
				 enum get_ksm_page_flags flags)
{
	struct page *page;
	void *expected_mapping;
	unsigned long kpfn;

	expected_mapping = (void *)((unsigned long)stable_node |
					PAGE_MAPPING_KSM);
again:
	kpfn = FUNC2(stable_node->kpfn); /* Address dependency. */
	page = FUNC6(kpfn);
	if (FUNC2(page->mapping) != expected_mapping)
		goto stale;

	/*
	 * We cannot do anything with the page while its refcount is 0.
	 * Usually 0 means free, or tail of a higher-order page: in which
	 * case this node is no longer referenced, and should be freed;
	 * however, it might mean that the page is under page_ref_freeze().
	 * The __remove_mapping() case is easy, again the node is now stale;
	 * the same is in reuse_ksm_page() case; but if page is swapcache
	 * in migrate_page_move_mapping(), it might still be our page,
	 * in which case it's essential to keep the node.
	 */
	while (!FUNC4(page)) {
		/*
		 * Another check for page->mapping != expected_mapping would
		 * work here too.  We have chosen the !PageSwapCache test to
		 * optimize the common case, when the page is or is about to
		 * be freed: PageSwapCache is cleared (under spin_lock_irq)
		 * in the ref_freeze section of __remove_mapping(); but Anon
		 * page->mapping reset to NULL later, in free_pages_prepare().
		 */
		if (!FUNC1(page))
			goto stale;
		FUNC3();
	}

	if (FUNC2(page->mapping) != expected_mapping) {
		FUNC7(page);
		goto stale;
	}

	if (flags == GET_KSM_PAGE_TRYLOCK) {
		if (!FUNC10(page)) {
			FUNC7(page);
			return FUNC0(-EBUSY);
		}
	} else if (flags == GET_KSM_PAGE_LOCK)
		FUNC5(page);

	if (flags != GET_KSM_PAGE_NOLOCK) {
		if (FUNC2(page->mapping) != expected_mapping) {
			FUNC11(page);
			FUNC7(page);
			goto stale;
		}
	}
	return page;

stale:
	/*
	 * We come here from above when page->mapping or !PageSwapCache
	 * suggests that the node is stale; but it might be under migration.
	 * We need smp_rmb(), matching the smp_wmb() in ksm_migrate_page(),
	 * before checking whether node->kpfn has been changed.
	 */
	FUNC9();
	if (FUNC2(stable_node->kpfn) != kpfn)
		goto again;
	FUNC8(stable_node);
	return NULL;
}