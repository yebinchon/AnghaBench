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
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;

/* Variables and functions */
 scalar_t__ PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,unsigned long,scalar_t__,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_gather*,unsigned long,scalar_t__,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 

void FUNC5(struct mmu_gather *tlb, struct vm_area_struct *vma,
		unsigned long floor, unsigned long ceiling)
{
	while (vma) {
		struct vm_area_struct *next = vma->vm_next;
		unsigned long addr = vma->vm_start;

		/*
		 * Hide vma from rmap and truncate_pagecache before freeing
		 * pgtables
		 */
		FUNC3(vma);
		FUNC4(vma);

		if (FUNC2(vma)) {
			FUNC1(tlb, addr, vma->vm_end,
				floor, next ? next->vm_start : ceiling);
		} else {
			/*
			 * Optimization: gather nearby vmas into one call down
			 */
			while (next && next->vm_start <= vma->vm_end + PMD_SIZE
			       && !FUNC2(next)) {
				vma = next;
				next = vma->vm_next;
				FUNC3(vma);
				FUNC4(vma);
			}
			FUNC0(tlb, addr, vma->vm_end,
				floor, next ? next->vm_start : ceiling);
		}
		vma = next;
	}
}