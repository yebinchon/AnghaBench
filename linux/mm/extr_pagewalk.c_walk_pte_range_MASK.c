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
struct mm_walk_ops {int (* pte_entry ) (int /*<<< orphan*/ *,unsigned long,scalar_t__,struct mm_walk*) ;} ;
struct mm_walk {struct mm_walk_ops* ops; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,scalar_t__,struct mm_walk*) ; 

__attribute__((used)) static int FUNC3(pmd_t *pmd, unsigned long addr, unsigned long end,
			  struct mm_walk *walk)
{
	pte_t *pte;
	int err = 0;
	const struct mm_walk_ops *ops = walk->ops;

	pte = FUNC0(pmd, addr);
	for (;;) {
		err = ops->pte_entry(pte, addr, addr + PAGE_SIZE, walk);
		if (err)
		       break;
		addr += PAGE_SIZE;
		if (addr == end)
			break;
		pte++;
	}

	FUNC1(pte);
	return err;
}