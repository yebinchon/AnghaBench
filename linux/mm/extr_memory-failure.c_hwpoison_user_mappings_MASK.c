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
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MF_ACTION_REQUIRED ; 
 int MF_MUST_KILL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_HWPOISON ; 
 int TTU_IGNORE_MLOCK ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,unsigned long,int) ; 
 scalar_t__ FUNC12 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct address_space* FUNC15 (struct page*) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tokill ; 
 int FUNC20 (struct page*,int) ; 

__attribute__((used)) static bool FUNC21(struct page *p, unsigned long pfn,
				  int flags, struct page **hpagep)
{
	enum ttu_flags ttu = TTU_IGNORE_MLOCK | TTU_IGNORE_ACCESS;
	struct address_space *mapping;
	FUNC0(tokill);
	bool unmap_success;
	int kill = 1, forcekill;
	struct page *hpage = *hpagep;
	bool mlocked = FUNC5(hpage);

	/*
	 * Here we are interested only in user-mapped pages, so skip any
	 * other types of pages.
	 */
	if (FUNC6(p) || FUNC7(p))
		return true;
	if (!(FUNC4(hpage) || FUNC2(p)))
		return true;

	/*
	 * This check implies we don't kill processes if their pages
	 * are in the swap cache early. Those are always late kills.
	 */
	if (!FUNC14(hpage))
		return true;

	if (FUNC3(p)) {
		FUNC17("Memory failure: %#lx: can't handle KSM pages.\n", pfn);
		return false;
	}

	if (FUNC8(p)) {
		FUNC17("Memory failure: %#lx: keeping poisoned page in swap cache\n",
			pfn);
		ttu |= TTU_IGNORE_HWPOISON;
	}

	/*
	 * Propagate the dirty bit from PTEs to struct page first, because we
	 * need this to decide if we should kill or just drop the page.
	 * XXX: the dirty test could be racy: set_page_dirty() may not always
	 * be called inside page lock (it's recommended but not enforced).
	 */
	mapping = FUNC15(hpage);
	if (!(flags & MF_MUST_KILL) && !FUNC1(hpage) && mapping &&
	    FUNC12(mapping)) {
		if (FUNC16(hpage)) {
			FUNC9(hpage);
		} else {
			kill = 0;
			ttu |= TTU_IGNORE_HWPOISON;
			FUNC18("Memory failure: %#lx: corrupted page was clean: dropped without side effects\n",
				pfn);
		}
	}

	/*
	 * First collect all the processes that have the page
	 * mapped in dirty form.  This has to be done before try_to_unmap,
	 * because ttu takes the rmap data structures down.
	 *
	 * Error handling: We ignore errors here because
	 * there's nothing that can be done.
	 */
	if (kill)
		FUNC10(hpage, &tokill, flags & MF_ACTION_REQUIRED);

	unmap_success = FUNC20(hpage, ttu);
	if (!unmap_success)
		FUNC17("Memory failure: %#lx: failed to unmap page (mapcount=%d)\n",
		       pfn, FUNC13(hpage));

	/*
	 * try_to_unmap() might put mlocked page in lru cache, so call
	 * shake_page() again to ensure that it's flushed.
	 */
	if (mlocked)
		FUNC19(hpage, 0);

	/*
	 * Now that the dirty bit has been propagated to the
	 * struct page and all unmaps done we can decide if
	 * killing is needed or not.  Only kill when the page
	 * was dirty or the process is not restartable,
	 * otherwise the tokill list is merely
	 * freed.  When there was a problem unmapping earlier
	 * use a more force-full uncatchable kill to prevent
	 * any accesses to the poisoned memory.
	 */
	forcekill = FUNC1(hpage) || (flags & MF_MUST_KILL);
	FUNC11(&tokill, forcekill, !unmap_success, pfn, flags);

	return unmap_success;
}