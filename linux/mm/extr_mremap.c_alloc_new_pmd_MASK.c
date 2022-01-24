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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static pmd_t *FUNC6(struct mm_struct *mm, struct vm_area_struct *vma,
			    unsigned long addr)
{
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;

	pgd = FUNC2(mm, addr);
	p4d = FUNC1(mm, pgd, addr);
	if (!p4d)
		return NULL;
	pud = FUNC5(mm, p4d, addr);
	if (!pud)
		return NULL;

	pmd = FUNC3(mm, pud, addr);
	if (!pmd)
		return NULL;

	FUNC0(FUNC4(*pmd));

	return pmd;
}