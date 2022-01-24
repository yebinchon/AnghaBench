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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(pgtable_t pgtable, struct mm_struct *mm,
		struct vm_area_struct *vma, unsigned long haddr, pmd_t *pmd,
		struct page *zero_page)
{
	pmd_t entry;
	if (!FUNC4(*pmd))
		return false;
	entry = FUNC0(zero_page, vma->vm_page_prot);
	entry = FUNC3(entry);
	if (pgtable)
		FUNC2(mm, pmd, pgtable);
	FUNC5(mm, haddr, pmd, entry);
	FUNC1(mm);
	return true;
}