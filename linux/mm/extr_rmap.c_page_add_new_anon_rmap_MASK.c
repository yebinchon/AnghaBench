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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page {int /*<<< orphan*/  _mapcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_ANON_MAPPED ; 
 int /*<<< orphan*/  NR_ANON_THPS ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct page*) ; 
 int FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

void FUNC12(struct page *page,
	struct vm_area_struct *vma, unsigned long address, bool compound)
{
	int nr = compound ? FUNC10(page) : 1;

	FUNC3(address < vma->vm_start || address >= vma->vm_end, vma);
	FUNC4(page);
	if (compound) {
		FUNC2(!FUNC1(page), page);
		/* increment count (starts at -1) */
		FUNC8(FUNC9(page), 0);
		FUNC5(page, NR_ANON_THPS);
	} else {
		/* Anon THP always mapped first with PMD */
		FUNC2(FUNC0(page), page);
		/* increment count (starts at -1) */
		FUNC8(&page->_mapcount, 0);
	}
	FUNC6(FUNC11(page), NR_ANON_MAPPED, nr);
	FUNC7(page, vma, address, 1);
}