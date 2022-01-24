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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*) ; 

__attribute__((used)) static void FUNC19(struct vm_area_struct *vma, pmd_t *old_pmd,
		unsigned long old_addr, unsigned long old_end,
		struct vm_area_struct *new_vma, pmd_t *new_pmd,
		unsigned long new_addr, bool need_rmap_locks)
{
	struct mm_struct *mm = vma->vm_mm;
	pte_t *old_pte, *new_pte, pte;
	spinlock_t *old_ptl, *new_ptl;
	bool force_flush = false;
	unsigned long len = old_end - old_addr;

	/*
	 * When need_rmap_locks is true, we take the i_mmap_rwsem and anon_vma
	 * locks to ensure that rmap will always observe either the old or the
	 * new ptes. This is the easiest way to avoid races with
	 * truncate_pagecache(), page migration, etc...
	 *
	 * When need_rmap_locks is false, we use other ways to avoid
	 * such races:
	 *
	 * - During exec() shift_arg_pages(), we use a specially tagged vma
	 *   which rmap call sites look for using is_vma_temporary_stack().
	 *
	 * - During mremap(), new_vma is often known to be placed after vma
	 *   in rmap traversal order. This ensures rmap will always observe
	 *   either the old pte, or the new pte, or both (the page table locks
	 *   serialize access to individual ptes, but only rmap traversal
	 *   order guarantees that we won't miss both the old and new ptes).
	 */
	if (need_rmap_locks)
		FUNC18(vma);

	/*
	 * We don't have to worry about the ordering of src and dst
	 * pte locks because exclusive mmap_sem prevents deadlock.
	 */
	old_pte = FUNC10(mm, old_pmd, old_addr, &old_ptl);
	new_pte = FUNC9(new_pmd, new_addr);
	new_ptl = FUNC7(mm, new_pmd);
	if (new_ptl != old_ptl)
		FUNC16(new_ptl, SINGLE_DEPTH_NESTING);
	FUNC3(vma->vm_mm);
	FUNC0();

	for (; old_addr < old_end; old_pte++, old_addr += PAGE_SIZE,
				   new_pte++, new_addr += PAGE_SIZE) {
		if (FUNC8(*old_pte))
			continue;

		pte = FUNC14(mm, old_addr, old_pte);
		/*
		 * If we are remapping a valid PTE, make sure
		 * to flush TLB before we drop the PTL for the
		 * PTE.
		 *
		 * NOTE! Both old and new PTL matter: the old one
		 * for racing with page_mkclean(), the new one to
		 * make sure the physical page stays valid until
		 * the TLB entry for the old mapping has been
		 * flushed.
		 */
		if (FUNC11(pte))
			force_flush = true;
		pte = FUNC5(pte, new_vma->vm_page_prot, old_addr, new_addr);
		pte = FUNC6(pte);
		FUNC15(mm, new_addr, new_pte, pte);
	}

	FUNC1();
	if (force_flush)
		FUNC4(vma, old_end - len, old_end);
	if (new_ptl != old_ptl)
		FUNC17(new_ptl);
	FUNC12(new_pte - 1);
	FUNC13(old_pte - 1, old_ptl);
	if (need_rmap_locks)
		FUNC2(vma);
}