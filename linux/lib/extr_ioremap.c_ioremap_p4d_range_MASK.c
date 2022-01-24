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
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  init_mm ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC4(pgd_t *pgd, unsigned long addr,
		unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
	p4d_t *p4d;
	unsigned long next;

	p4d = FUNC3(&init_mm, pgd, addr);
	if (!p4d)
		return -ENOMEM;
	do {
		next = FUNC2(addr, end);

		if (FUNC1(p4d, addr, next, phys_addr, prot))
			continue;

		if (FUNC0(p4d, addr, next, phys_addr, prot))
			return -ENOMEM;
	} while (p4d++, phys_addr += (next - addr), addr = next, addr != end);
	return 0;
}