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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; struct file* vm_file; } ;
struct perf_addr_filter_range {unsigned long start; void* size; } ;
struct perf_addr_filter {unsigned long offset; unsigned long size; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 void* FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_addr_filter*,struct file*,unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct perf_addr_filter *filter,
					struct vm_area_struct *vma,
					struct perf_addr_filter_range *fr)
{
	unsigned long vma_size = vma->vm_end - vma->vm_start;
	unsigned long off = vma->vm_pgoff << PAGE_SHIFT;
	struct file *file = vma->vm_file;

	if (!FUNC1(filter, file, off, vma_size))
		return false;

	if (filter->offset < off) {
		fr->start = vma->vm_start;
		fr->size = FUNC0(vma_size, filter->size - (off - filter->offset));
	} else {
		fr->start = vma->vm_start + filter->offset - off;
		fr->size = FUNC0(vma->vm_end - fr->start, filter->size);
	}

	return true;
}