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
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct page {scalar_t__ mapping; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FOLL_DUMP ; 
 unsigned int FOLL_GET ; 
 unsigned int FOLL_MLOCK ; 
 unsigned int FOLL_NUMA ; 
 unsigned int FOLL_TOUCH ; 
 unsigned int FOLL_WRITE ; 
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct page*) ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 struct page* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

struct page *FUNC20(struct vm_area_struct *vma,
				   unsigned long addr,
				   pmd_t *pmd,
				   unsigned int flags)
{
	struct mm_struct *mm = vma->vm_mm;
	struct page *page = NULL;

	FUNC6(FUNC14(mm, pmd));

	if (flags & FOLL_WRITE && !FUNC7(*pmd, flags))
		goto out;

	/* Avoid dumping huge zero page */
	if ((flags & FOLL_DUMP) && FUNC10(*pmd))
		return FUNC0(-EFAULT);

	/* Full NUMA hinting faults to serialise migration in fault paths */
	if ((flags & FOLL_NUMA) && FUNC16(*pmd))
		goto out;

	page = FUNC15(*pmd);
	FUNC5(!FUNC4(page) && !FUNC11(page), page);
	if (flags & FOLL_TOUCH)
		FUNC17(vma, addr, pmd, flags);
	if ((flags & FOLL_MLOCK) && (vma->vm_flags & VM_LOCKED)) {
		/*
		 * We don't mlock() pte-mapped THPs. This way we can avoid
		 * leaking mlocked pages into non-VM_LOCKED VMAs.
		 *
		 * For anon THP:
		 *
		 * In most cases the pmd is the only mapping of the page as we
		 * break COW for the mlock() -- see gup_flags |= FOLL_WRITE for
		 * writable private mappings in populate_vma_page_range().
		 *
		 * The only scenario when we have the page shared here is if we
		 * mlocking read-only mapping shared over fork(). We skip
		 * mlocking such pages.
		 *
		 * For file THP:
		 *
		 * We can expect PageDoubleMap() to be stable under page lock:
		 * for file pages we set it in page_add_file_rmap(), which
		 * requires page to be locked.
		 */

		if (FUNC1(page) && FUNC8(page) != 1)
			goto skip_mlock;
		if (FUNC3(page) || !page->mapping)
			goto skip_mlock;
		if (!FUNC18(page))
			goto skip_mlock;
		FUNC12();
		if (page->mapping && !FUNC3(page))
			FUNC13(page);
		FUNC19(page);
	}
skip_mlock:
	page += (addr & ~HPAGE_PMD_MASK) >> PAGE_SHIFT;
	FUNC5(!FUNC2(page) && !FUNC11(page), page);
	if (flags & FOLL_GET)
		FUNC9(page);

out:
	return page;
}