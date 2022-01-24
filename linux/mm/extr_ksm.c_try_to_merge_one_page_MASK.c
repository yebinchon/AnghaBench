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
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*,struct page*) ; 
 int FUNC11 (struct vm_area_struct*,struct page*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 scalar_t__ FUNC16 (struct vm_area_struct*,struct page*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct vm_area_struct *vma,
				 struct page *page, struct page *kpage)
{
	pte_t orig_pte = FUNC5(0);
	int err = -EFAULT;

	if (page == kpage)			/* ksm page forked */
		return 0;

	if (!FUNC0(page))
		goto out;

	/*
	 * We need the page lock to read a stable PageSwapCache in
	 * write_protect_page().  We use trylock_page() instead of
	 * lock_page() because we don't want to wait here - we
	 * prefer to continue scanning and merging different pages,
	 * then come back to this page when it is unlocked.
	 */
	if (!FUNC14(page))
		goto out;

	if (FUNC3(page)) {
		if (FUNC13(page))
			goto out_unlock;
	}

	/*
	 * If this anonymous page is mapped only here, its pte may need
	 * to be write-protected.  If it's mapped elsewhere, all of its
	 * ptes are necessarily already write-protected.  But in either
	 * case, we need to lock and check page_count is not raised.
	 */
	if (FUNC16(vma, page, &orig_pte) == 0) {
		if (!kpage) {
			/*
			 * While we hold page lock, upgrade page from
			 * PageAnon+anon_vma to PageKsm+NULL stable_node:
			 * stable_tree_insert() will update stable_node.
			 */
			FUNC12(page, NULL);
			FUNC7(page);
			/*
			 * Page reclaim just frees a clean page with no dirty
			 * ptes: make sure that the ksm page would be swapped.
			 */
			if (!FUNC1(page))
				FUNC4(page);
			err = 0;
		} else if (FUNC10(page, kpage))
			err = FUNC11(vma, page, kpage, orig_pte);
	}

	if ((vma->vm_flags & VM_LOCKED) && kpage && !err) {
		FUNC9(page);
		if (!FUNC2(kpage)) {
			FUNC15(page);
			FUNC6(kpage);
			FUNC8(kpage);
			page = kpage;		/* for final unlock */
		}
	}

out_unlock:
	FUNC15(page);
out:
	return err;
}