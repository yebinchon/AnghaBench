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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vm_area_struct *vma,
				   unsigned long address, pte_t *ptep)
{
	pte_t entry;

	entry = FUNC1(FUNC0(FUNC2(ptep)));
	if (FUNC3(vma, address, ptep, entry, 1))
		FUNC4(vma, address, ptep);
}