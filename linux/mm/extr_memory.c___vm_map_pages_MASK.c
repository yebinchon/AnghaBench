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
struct vm_area_struct {unsigned long vm_start; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (struct vm_area_struct*,unsigned long,struct page*) ; 
 unsigned long FUNC1 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC2(struct vm_area_struct *vma, struct page **pages,
				unsigned long num, unsigned long offset)
{
	unsigned long count = FUNC1(vma);
	unsigned long uaddr = vma->vm_start;
	int ret, i;

	/* Fail if the user requested offset is beyond the end of the object */
	if (offset >= num)
		return -ENXIO;

	/* Fail if the user requested size exceeds available object size */
	if (count > num - offset)
		return -ENXIO;

	for (i = 0; i < count; i++) {
		ret = FUNC0(vma, uaddr, pages[offset + i]);
		if (ret < 0)
			return ret;
		uaddr += PAGE_SIZE;
	}

	return 0;
}