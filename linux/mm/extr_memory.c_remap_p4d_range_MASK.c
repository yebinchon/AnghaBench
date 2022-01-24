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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct mm_struct *mm, pgd_t *pgd,
			unsigned long addr, unsigned long end,
			unsigned long pfn, pgprot_t prot)
{
	p4d_t *p4d;
	unsigned long next;
	int err;

	pfn -= addr >> PAGE_SHIFT;
	p4d = FUNC1(mm, pgd, addr);
	if (!p4d)
		return -ENOMEM;
	do {
		next = FUNC0(addr, end);
		err = FUNC2(mm, p4d, addr, next,
				pfn + (addr >> PAGE_SHIFT), prot);
		if (err)
			return err;
	} while (p4d++, addr = next, addr != end);
	return 0;
}