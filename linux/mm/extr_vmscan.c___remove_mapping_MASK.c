#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ swp_entry_t ;
struct page {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; TYPE_1__* a_ops; } ;
struct TYPE_6__ {void (* freepage ) (struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,TYPE_2__) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,TYPE_2__) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 struct address_space* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,TYPE_2__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct address_space *mapping, struct page *page,
			    bool reclaimed)
{
	unsigned long flags;
	int refcount;

	FUNC0(!FUNC2(page));
	FUNC0(mapping != FUNC11(page));

	FUNC18(&mapping->i_pages, flags);
	/*
	 * The non racy check for a busy page.
	 *
	 * Must be careful with the order of the tests. When someone has
	 * a ref to the page, it may be possible that they dirty it then
	 * drop the reference. So if PageDirty is tested before page_count
	 * here, then the following race may occur:
	 *
	 * get_user_pages(&page);
	 * [user mapping goes away]
	 * write_to(page);
	 *				!PageDirty(page)    [good]
	 * SetPageDirty(page);
	 * put_page(page);
	 *				!page_count(page)   [good, discard it]
	 *
	 * [oops, our write_to data is lost]
	 *
	 * Reversing the order of the tests ensures such a situation cannot
	 * escape unnoticed. The smp_rmb is needed to ensure the page->flags
	 * load is not satisfied before that of page->_refcount.
	 *
	 * Note that if SetPageDirty is always performed via set_page_dirty,
	 * and thus under the i_pages lock, then this ordering is not required.
	 */
	refcount = 1 + FUNC6(page);
	if (!FUNC13(page, refcount))
		goto cannot_free;
	/* note: atomic_cmpxchg in page_ref_freeze provides the smp_rmb */
	if (FUNC16(FUNC1(page))) {
		FUNC14(page, refcount);
		goto cannot_free;
	}

	if (FUNC3(page)) {
		swp_entry_t swap = { .val = FUNC12(page) };
		FUNC9(page, swap);
		FUNC5(page, swap);
		FUNC19(&mapping->i_pages, flags);
		FUNC15(page, swap);
	} else {
		void (*freepage)(struct page *);
		void *shadow = NULL;

		freepage = mapping->a_ops->freepage;
		/*
		 * Remember a shadow entry for reclaimed file cache in
		 * order to detect refaults, thus thrashing, later on.
		 *
		 * But don't store shadows in an address space that is
		 * already exiting.  This is not just an optizimation,
		 * inode reclaim needs to empty out the radix tree or
		 * the nodes are lost.  Don't plant shadows behind its
		 * back.
		 *
		 * We also don't store shadows for DAX mappings because the
		 * only page cache pages found in these are zero pages
		 * covering holes, and because we don't want to mix DAX
		 * exceptional entries and shadow exceptional entries in the
		 * same address_space.
		 */
		if (reclaimed && FUNC10(page) &&
		    !FUNC8(mapping) && !FUNC7(mapping))
			shadow = FUNC17(page);
		FUNC4(page, shadow);
		FUNC19(&mapping->i_pages, flags);

		if (freepage != NULL)
			freepage(page);
	}

	return 1;

cannot_free:
	FUNC19(&mapping->i_pages, flags);
	return 0;
}