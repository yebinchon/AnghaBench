#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {unsigned long val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct vm_area_struct {unsigned long vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmlist; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 size_t MM_SWAPENTS ; 
 unsigned long VM_SHARED ; 
 struct page* FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 scalar_t__ FUNC6 (TYPE_1__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 struct page* FUNC12 (TYPE_1__) ; 
 size_t FUNC13 (struct page*) ; 
 int /*<<< orphan*/  mmlist_lock ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct page* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__) ; 
 scalar_t__ FUNC32 (int) ; 
 struct page* FUNC33 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long
FUNC34(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		pte_t *dst_pte, pte_t *src_pte, struct vm_area_struct *vma,
		unsigned long addr, int *rss)
{
	unsigned long vm_flags = vma->vm_flags;
	pte_t pte = *src_pte;
	struct page *page;

	/* pte contains position in swap or file, so copy. */
	if (FUNC32(!FUNC20(pte))) {
		swp_entry_t entry = FUNC23(pte);

		if (FUNC7(!FUNC14(entry))) {
			if (FUNC30(entry) < 0)
				return entry.val;

			/* make sure dst_mm is on swapoff's mmlist. */
			if (FUNC32(FUNC9(&dst_mm->mmlist))) {
				FUNC28(&mmlist_lock);
				if (FUNC9(&dst_mm->mmlist))
					FUNC8(&dst_mm->mmlist,
							&src_mm->mmlist);
				FUNC29(&mmlist_lock);
			}
			rss[MM_SWAPENTS]++;
		} else if (FUNC4(entry)) {
			page = FUNC12(entry);

			rss[FUNC13(page)]++;

			if (FUNC6(entry) &&
					FUNC2(vm_flags)) {
				/*
				 * COW mappings require pages in both
				 * parent and child to be set to read.
				 */
				FUNC11(&entry);
				pte = FUNC31(entry);
				if (FUNC22(*src_pte))
					pte = FUNC21(pte);
				FUNC27(src_mm, addr, src_pte, pte);
			}
		} else if (FUNC3(entry)) {
			page = FUNC0(entry);

			/*
			 * Update rss count even for unaddressable pages, as
			 * they should treated just like normal pages in this
			 * respect.
			 *
			 * We will likely want to have some new rss counters
			 * for unaddressable pages, at some point. But for now
			 * keep things as they are.
			 */
			FUNC1(page);
			rss[FUNC13(page)]++;
			FUNC15(page, false);

			/*
			 * We do not preserve soft-dirty information, because so
			 * far, checkpoint/restore is the only feature that
			 * requires that. And checkpoint/restore does not work
			 * when a device driver is involved (you cannot easily
			 * save and restore device driver state).
			 */
			if (FUNC5(entry) &&
			    FUNC2(vm_flags)) {
				FUNC10(&entry);
				pte = FUNC31(entry);
				FUNC27(src_mm, addr, src_pte, pte);
			}
		}
		goto out_set_pte;
	}

	/*
	 * If it's a COW mapping, write protect it both
	 * in the parent and the child
	 */
	if (FUNC2(vm_flags) && FUNC24(pte)) {
		FUNC26(src_mm, addr, src_pte);
		pte = FUNC25(pte);
	}

	/*
	 * If it's a shared mapping, mark it clean in
	 * the child
	 */
	if (vm_flags & VM_SHARED)
		pte = FUNC17(pte);
	pte = FUNC18(pte);

	page = FUNC33(vma, addr, pte);
	if (page) {
		FUNC1(page);
		FUNC15(page, false);
		rss[FUNC13(page)]++;
	} else if (FUNC16(pte)) {
		page = FUNC19(pte);
	}

out_set_pte:
	FUNC27(dst_mm, addr, dst_pte, pte);
	return 0;
}