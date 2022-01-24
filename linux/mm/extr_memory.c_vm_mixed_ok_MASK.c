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
struct vm_area_struct {int vm_flags; } ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int VM_MIXEDMAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct vm_area_struct *vma, pfn_t pfn)
{
	/* these checks mirror the abort conditions in vm_normal_page */
	if (vma->vm_flags & VM_MIXEDMAP)
		return true;
	if (FUNC1(pfn))
		return true;
	if (FUNC2(pfn))
		return true;
	if (FUNC0(FUNC3(pfn)))
		return true;
	return false;
}