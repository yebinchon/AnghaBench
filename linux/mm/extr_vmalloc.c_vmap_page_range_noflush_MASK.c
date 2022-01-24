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
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,struct page**,int*) ; 

__attribute__((used)) static int FUNC4(unsigned long start, unsigned long end,
				   pgprot_t prot, struct page **pages)
{
	pgd_t *pgd;
	unsigned long next;
	unsigned long addr = start;
	int err = 0;
	int nr = 0;

	FUNC0(addr >= end);
	pgd = FUNC2(addr);
	do {
		next = FUNC1(addr, end);
		err = FUNC3(pgd, addr, next, prot, pages, &nr);
		if (err)
			return err;
	} while (pgd++, addr = next, addr != end);

	return nr;
}