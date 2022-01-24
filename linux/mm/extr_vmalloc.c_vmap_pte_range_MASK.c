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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pmd_t *pmd, unsigned long addr,
		unsigned long end, pgprot_t prot, struct page **pages, int *nr)
{
	pte_t *pte;

	/*
	 * nr is a running index into the array which helps higher level
	 * callers keep track of where we're up to.
	 */

	pte = FUNC2(pmd, addr);
	if (!pte)
		return -ENOMEM;
	do {
		struct page *page = pages[*nr];

		if (FUNC0(!FUNC3(*pte)))
			return -EBUSY;
		if (FUNC0(!page))
			return -ENOMEM;
		FUNC4(&init_mm, addr, pte, FUNC1(page, prot));
		(*nr)++;
	} while (pte++, addr += PAGE_SIZE, addr != end);
	return 0;
}