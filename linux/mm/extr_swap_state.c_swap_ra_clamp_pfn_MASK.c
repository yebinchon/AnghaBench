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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct vm_area_struct *vma,
				     unsigned long faddr,
				     unsigned long lpfn,
				     unsigned long rpfn,
				     unsigned long *start,
				     unsigned long *end)
{
	*start = FUNC1(lpfn, FUNC0(vma->vm_start),
		      FUNC0(faddr & PMD_MASK));
	*end = FUNC2(rpfn, FUNC0(vma->vm_end),
		    FUNC0((faddr & PMD_MASK) + PMD_SIZE));
}