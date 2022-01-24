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
typedef  unsigned long phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long) ; 

int FUNC6(unsigned long addr,
		       unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
	pgd_t *pgd;
	unsigned long start;
	unsigned long next;
	int err;

	FUNC3();
	FUNC0(addr >= end);

	start = addr;
	pgd = FUNC5(addr);
	do {
		next = FUNC4(addr, end);
		err = FUNC2(pgd, addr, next, phys_addr, prot);
		if (err)
			break;
	} while (pgd++, phys_addr += (next - addr), addr = next, addr != end);

	FUNC1(start, end);

	return err;
}