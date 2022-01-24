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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  MM_SWAPENTS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct mem_cgroup*,int,int) ; 
 scalar_t__ FUNC8 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static int FUNC22(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, swp_entry_t entry, struct page *page)
{
	struct page *swapcache;
	struct mem_cgroup *memcg;
	spinlock_t *ptl;
	pte_t *pte;
	int ret = 1;

	swapcache = page;
	page = FUNC4(page, vma, addr);
	if (FUNC20(!page))
		return -ENOMEM;

	if (FUNC8(page, vma->vm_mm, GFP_KERNEL,
				&memcg, false)) {
		ret = -ENOMEM;
		goto out_nolock;
	}

	pte = FUNC13(vma->vm_mm, pmd, addr, &ptl);
	if (FUNC20(!FUNC14(*pte, FUNC19(entry)))) {
		FUNC6(page, memcg, false);
		ret = 0;
		goto out;
	}

	FUNC1(vma->vm_mm, MM_SWAPENTS);
	FUNC3(vma->vm_mm, MM_ANONPAGES);
	FUNC2(page);
	FUNC17(vma->vm_mm, addr, pte,
		   FUNC12(FUNC9(page, vma->vm_page_prot)));
	if (page == swapcache) {
		FUNC10(page, vma, addr, false);
		FUNC7(page, memcg, true, false);
	} else { /* ksm created a completely new copy */
		FUNC11(page, vma, addr, false);
		FUNC7(page, memcg, false, false);
		FUNC5(page, vma);
	}
	FUNC18(entry);
	/*
	 * Move the page to the active list so it is not
	 * immediately swapped out again after swapon.
	 */
	FUNC0(page);
out:
	FUNC15(pte, ptl);
out_nolock:
	if (page != swapcache) {
		FUNC21(page);
		FUNC16(page);
	}
	return ret;
}