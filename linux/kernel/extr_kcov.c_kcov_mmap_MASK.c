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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_flags; TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct kcov {int size; scalar_t__ mode; int /*<<< orphan*/  lock; void* area; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct kcov* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ KCOV_MODE_INIT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  VM_DONTEXPAND ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long,struct page*) ; 
 struct page* FUNC5 (void*) ; 
 void* FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(struct file *filep, struct vm_area_struct *vma)
{
	int res = 0;
	void *area;
	struct kcov *kcov = vma->vm_file->private_data;
	unsigned long size, off;
	struct page *page;

	area = FUNC6(vma->vm_end - vma->vm_start);
	if (!area)
		return -ENOMEM;

	FUNC1(&kcov->lock);
	size = kcov->size * sizeof(unsigned long);
	if (kcov->mode != KCOV_MODE_INIT || vma->vm_pgoff != 0 ||
	    vma->vm_end - vma->vm_start != size) {
		res = -EINVAL;
		goto exit;
	}
	if (!kcov->area) {
		kcov->area = area;
		vma->vm_flags |= VM_DONTEXPAND;
		FUNC2(&kcov->lock);
		for (off = 0; off < size; off += PAGE_SIZE) {
			page = FUNC5(kcov->area + off);
			if (FUNC4(vma, vma->vm_start + off, page))
				FUNC0(1, "vm_insert_page() failed");
		}
		return 0;
	}
exit:
	FUNC2(&kcov->lock);
	FUNC3(area);
	return res;
}