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
struct zone {int dummy; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_flags; } ;
struct pagevec {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int FOLL_DUMP ; 
 int FOLL_GET ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  VM_LOCKED_CLEAR_MASK ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*,struct zone*) ; 
 unsigned long FUNC6 (struct pagevec*,struct vm_area_struct*,struct zone*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct page* FUNC8 (struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 unsigned int FUNC10 (struct page*) ; 
 struct zone* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

void FUNC16(struct vm_area_struct *vma,
			     unsigned long start, unsigned long end)
{
	vma->vm_flags &= VM_LOCKED_CLEAR_MASK;

	while (start < end) {
		struct page *page;
		unsigned int page_mask = 0;
		unsigned long page_increm;
		struct pagevec pvec;
		struct zone *zone;

		FUNC13(&pvec);
		/*
		 * Although FOLL_DUMP is intended for get_dump_page(),
		 * it just so happens that its special treatment of the
		 * ZERO_PAGE (returning an error instead of doing get_page)
		 * suits munlock very well (and if somehow an abnormal page
		 * has sneaked into the range, we won't oops here: great).
		 */
		page = FUNC8(vma, start, FOLL_GET | FOLL_DUMP);

		if (page && !FUNC0(page)) {
			if (FUNC3(page)) {
				FUNC4(FUNC1(page), page);
				FUNC14(page); /* follow_page_mask() */
			} else if (FUNC2(page)) {
				FUNC9(page);
				/*
				 * Any THP page found by follow_page_mask() may
				 * have gotten split before reaching
				 * munlock_vma_page(), so we need to compute
				 * the page_mask here instead.
				 */
				page_mask = FUNC10(page);
				FUNC15(page);
				FUNC14(page); /* follow_page_mask() */
			} else {
				/*
				 * Non-huge pages are handled in batches via
				 * pagevec. The pin from follow_page_mask()
				 * prevents them from collapsing by THP.
				 */
				FUNC12(&pvec, page);
				zone = FUNC11(page);

				/*
				 * Try to fill the rest of pagevec using fast
				 * pte walk. This will also update start to
				 * the next page to process. Then munlock the
				 * pagevec.
				 */
				start = FUNC6(&pvec, vma,
						zone, start, end);
				FUNC5(&pvec, zone);
				goto next;
			}
		}
		page_increm = 1 + page_mask;
		start += page_increm * PAGE_SIZE;
next:
		FUNC7();
	}
}