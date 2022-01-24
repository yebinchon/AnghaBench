#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct mm_walk {TYPE_1__* ops; struct vm_area_struct* vma; } ;
struct TYPE_2__ {scalar_t__ hugetlb_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vm_area_struct*) ; 
 int FUNC1 (unsigned long,unsigned long,struct mm_walk*) ; 
 int FUNC2 (unsigned long,unsigned long,struct mm_walk*) ; 

__attribute__((used)) static int FUNC3(unsigned long start, unsigned long end,
			struct mm_walk *walk)
{
	int err = 0;
	struct vm_area_struct *vma = walk->vma;

	if (vma && FUNC0(vma)) {
		if (walk->ops->hugetlb_entry)
			err = FUNC1(start, end, walk);
	} else
		err = FUNC2(start, end, walk);

	return err;
}