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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long PMD_SHIFT ; 
 unsigned long PUD_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC13 (struct page*,struct vm_area_struct*) ; 

__attribute__((used)) static unsigned long FUNC14(struct page *page,
		struct vm_area_struct *vma)
{
	unsigned long address = FUNC13(page, vma);
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	pgd = FUNC2(vma->vm_mm, address);
	if (!FUNC3(*pgd))
		return 0;
	p4d = FUNC0(pgd, address);
	if (!FUNC1(*p4d))
		return 0;
	pud = FUNC11(p4d, address);
	if (!FUNC12(*pud))
		return 0;
	if (FUNC10(*pud))
		return PUD_SHIFT;
	pmd = FUNC5(pud, address);
	if (!FUNC6(*pmd))
		return 0;
	if (FUNC4(*pmd))
		return PMD_SHIFT;
	pte = FUNC8(pmd, address);
	if (!FUNC9(*pte))
		return 0;
	if (FUNC7(*pte))
		return PAGE_SHIFT;
	return 0;
}