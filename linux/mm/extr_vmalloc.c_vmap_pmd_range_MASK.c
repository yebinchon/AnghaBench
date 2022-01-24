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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  init_mm ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,struct page**,int*) ; 

__attribute__((used)) static int FUNC3(pud_t *pud, unsigned long addr,
		unsigned long end, pgprot_t prot, struct page **pages, int *nr)
{
	pmd_t *pmd;
	unsigned long next;

	pmd = FUNC1(&init_mm, pud, addr);
	if (!pmd)
		return -ENOMEM;
	do {
		next = FUNC0(addr, end);
		if (FUNC2(pmd, addr, next, prot, pages, nr))
			return -ENOMEM;
	} while (pmd++, addr = next, addr != end);
	return 0;
}