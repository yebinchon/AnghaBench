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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int FOLL_WRITE ; 
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vm_area_struct *vma, unsigned long addr,
		pmd_t *pmd, int flags)
{
	pmd_t _pmd;

	_pmd = FUNC1(*pmd);
	if (flags & FOLL_WRITE)
		_pmd = FUNC0(_pmd);
	if (FUNC2(vma, addr & HPAGE_PMD_MASK,
				pmd, _pmd, flags & FOLL_WRITE))
		FUNC3(vma, addr, pmd);
}