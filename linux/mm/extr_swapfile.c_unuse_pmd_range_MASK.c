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
struct vm_area_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned int,int,unsigned long*) ; 

__attribute__((used)) static inline int FUNC5(struct vm_area_struct *vma, pud_t *pud,
				unsigned long addr, unsigned long end,
				unsigned int type, bool frontswap,
				unsigned long *fs_pages_to_unuse)
{
	pmd_t *pmd;
	unsigned long next;
	int ret;

	pmd = FUNC3(pud, addr);
	do {
		FUNC0();
		next = FUNC1(addr, end);
		if (FUNC2(pmd))
			continue;
		ret = FUNC4(vma, pmd, addr, next, type,
				      frontswap, fs_pages_to_unuse);
		if (ret)
			return ret;
	} while (pmd++, addr = next, addr != end);
	return 0;
}