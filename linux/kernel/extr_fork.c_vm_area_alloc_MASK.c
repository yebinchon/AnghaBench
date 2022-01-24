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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vm_area_struct* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,struct mm_struct*) ; 

struct vm_area_struct *FUNC2(struct mm_struct *mm)
{
	struct vm_area_struct *vma;

	vma = FUNC0(vm_area_cachep, GFP_KERNEL);
	if (vma)
		FUNC1(vma, mm);
	return vma;
}