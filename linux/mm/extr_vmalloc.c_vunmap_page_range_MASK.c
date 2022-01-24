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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long addr, unsigned long end)
{
	pgd_t *pgd;
	unsigned long next;

	FUNC0(addr >= end);
	pgd = FUNC3(addr);
	do {
		next = FUNC1(addr, end);
		if (FUNC2(pgd))
			continue;
		FUNC4(pgd, addr, next);
	} while (pgd++, addr = next, addr != end);
}