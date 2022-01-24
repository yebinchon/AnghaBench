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
typedef  unsigned long phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pud_t *pud, unsigned long addr,
				unsigned long end, phys_addr_t phys_addr,
				pgprot_t prot)
{
	if (!FUNC1())
		return 0;

	if ((end - addr) != PUD_SIZE)
		return 0;

	if (!FUNC0(addr, PUD_SIZE))
		return 0;

	if (!FUNC0(phys_addr, PUD_SIZE))
		return 0;

	if (FUNC3(*pud) && !FUNC2(pud, addr))
		return 0;

	return FUNC4(pud, phys_addr, prot);
}