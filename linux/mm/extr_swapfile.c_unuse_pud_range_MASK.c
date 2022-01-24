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
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned int,int,unsigned long*) ; 

__attribute__((used)) static inline int FUNC4(struct vm_area_struct *vma, p4d_t *p4d,
				unsigned long addr, unsigned long end,
				unsigned int type, bool frontswap,
				unsigned long *fs_pages_to_unuse)
{
	pud_t *pud;
	unsigned long next;
	int ret;

	pud = FUNC2(p4d, addr);
	do {
		next = FUNC0(addr, end);
		if (FUNC1(pud))
			continue;
		ret = FUNC3(vma, pud, addr, next, type,
				      frontswap, fs_pages_to_unuse);
		if (ret)
			return ret;
	} while (pud++, addr = next, addr != end);
	return 0;
}