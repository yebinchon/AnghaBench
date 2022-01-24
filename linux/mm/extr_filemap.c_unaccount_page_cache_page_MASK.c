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
struct address_space {int /*<<< orphan*/  host; } ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_VM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  NR_FILE_THPS ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 int /*<<< orphan*/  NR_SHMEM_THPS ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  TAINT_BAD_PAGE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC16 (struct page*,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct address_space*) ; 
 int FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct address_space*) ; 
 int FUNC22 (struct page*) ; 
 int FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC31(struct address_space *mapping,
				      struct page *page)
{
	int nr;

	/*
	 * if we're uptodate, flush out into the cleancache, otherwise
	 * invalidate any existing cleancache entries.  We can't leave
	 * stale data around in the cleancache once our page is gone
	 */
	if (FUNC7(page) && FUNC3(page))
		FUNC15(page);
	else
		FUNC14(mapping, page);

	FUNC8(FUNC5(page), page);
	FUNC8(FUNC25(page), page);
	if (!FUNC0(CONFIG_DEBUG_VM) && FUNC30(FUNC25(page))) {
		int mapcount;

		FUNC29("BUG: Bad page cache in process %s  pfn:%05lx\n",
			 current->comm, FUNC28(page));
		FUNC16(page, "still mapped when deleted");
		FUNC17();
		FUNC13(TAINT_BAD_PAGE, LOCKDEP_NOW_UNRELIABLE);

		mapcount = FUNC23(page);
		if (FUNC21(mapping) &&
		    FUNC22(page) >= mapcount + 2) {
			/*
			 * All vmas have already been torn down, so it's
			 * a good bet that actually the page is unmapped,
			 * and we'd prefer not to leak it: if we're wrong,
			 * some other bad page check should catch it later.
			 */
			FUNC24(page);
			FUNC27(page, mapcount);
		}
	}

	/* hugetlb pages do not participate in page cache accounting. */
	if (FUNC2(page))
		return;

	nr = FUNC19(page);

	FUNC11(FUNC26(page), NR_FILE_PAGES, -nr);
	if (FUNC4(page)) {
		FUNC11(FUNC26(page), NR_SHMEM, -nr);
		if (FUNC6(page))
			FUNC10(page, NR_SHMEM_THPS);
	} else if (FUNC6(page)) {
		FUNC10(page, NR_FILE_THPS);
		FUNC18(mapping);
	}

	/*
	 * At this point page must be either written or cleaned by
	 * truncate.  Dirty page here signals a bug and loss of
	 * unwritten data.
	 *
	 * This fixes dirty accounting after removing the page entirely
	 * but leaves PageDirty set: it has no effect for truncated
	 * page and anyway will be cleared before returning page into
	 * buddy allocator.
	 */
	if (FUNC9(FUNC1(page)))
		FUNC12(page, mapping, FUNC20(mapping->host));
}