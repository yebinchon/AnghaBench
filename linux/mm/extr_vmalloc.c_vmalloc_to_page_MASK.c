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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

struct page *FUNC17(const void *vmalloc_addr)
{
	unsigned long addr = (unsigned long) vmalloc_addr;
	struct page *page = NULL;
	pgd_t *pgd = FUNC6(addr);
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *ptep, pte;

	/*
	 * XXX we might need to change this if we add VIRTUAL_BUG_ON for
	 * architectures that do not vmalloc module space
	 */
	FUNC0(!FUNC2(vmalloc_addr));

	if (FUNC5(*pgd))
		return NULL;
	p4d = FUNC4(pgd, addr);
	if (FUNC3(*p4d))
		return NULL;
	pud = FUNC16(p4d, addr);

	/*
	 * Don't dereference bad PUD or PMD (below) entries. This will also
	 * identify huge mappings, which we may encounter on architectures
	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
	 * not [unambiguously] associated with a struct page, so there is
	 * no correct value to return for them.
	 */
	FUNC1(FUNC14(*pud));
	if (FUNC15(*pud) || FUNC14(*pud))
		return NULL;
	pmd = FUNC9(pud, addr);
	FUNC1(FUNC7(*pmd));
	if (FUNC8(*pmd) || FUNC7(*pmd))
		return NULL;

	ptep = FUNC10(pmd, addr);
	pte = *ptep;
	if (FUNC12(pte))
		page = FUNC11(pte);
	FUNC13(ptep);
	return page;
}