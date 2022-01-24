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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(p4d_t *p4d, unsigned long addr, unsigned long end)
{
	pud_t *pud;
	unsigned long next;

	pud = FUNC3(p4d, addr);
	do {
		next = FUNC0(addr, end);
		if (FUNC1(pud))
			continue;
		if (FUNC2(pud))
			continue;
		FUNC4(pud, addr, next);
	} while (pud++, addr = next, addr != end);
}