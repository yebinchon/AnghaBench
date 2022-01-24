#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_region {int vm_flags; unsigned long vm_start; unsigned long vm_end; unsigned long vm_top; } ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; scalar_t__ vm_file; TYPE_1__* vm_region; } ;
typedef  unsigned long loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_top; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long NOMMU_MAP_DIRECT ; 
 unsigned long PAGE_SHIFT ; 
 int VM_MAPPED_COPY ; 
 int VM_MAYSHARE ; 
 void* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__,struct vm_area_struct*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (scalar_t__,void*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  mmap_pages_allocated ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long sysctl_nr_trim_pages ; 
 int /*<<< orphan*/  FUNC10 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC11(struct vm_area_struct *vma,
			   struct vm_region *region,
			   unsigned long len,
			   unsigned long capabilities)
{
	unsigned long total, point;
	void *base;
	int ret, order;

	/* invoke the file's mapping function so that it can keep track of
	 * shared mappings on devices or memory
	 * - VM_MAYSHARE will be set if it may attempt to share
	 */
	if (capabilities & NOMMU_MAP_DIRECT) {
		ret = FUNC3(vma->vm_file, vma);
		if (ret == 0) {
			/* shouldn't return success if we're not sharing */
			FUNC0(!(vma->vm_flags & VM_MAYSHARE));
			vma->vm_region->vm_top = vma->vm_region->vm_end;
			return 0;
		}
		if (ret != -ENOSYS)
			return ret;

		/* getting an ENOSYS error indicates that direct mmap isn't
		 * possible (as opposed to tried but failed) so we'll try to
		 * make a private copy of the data and map that instead */
	}


	/* allocate some memory to hold the mapping
	 * - note that this may not return a page-aligned address if the object
	 *   we're allocating is smaller than a page
	 */
	order = FUNC5(len);
	total = 1 << order;
	point = len >> PAGE_SHIFT;

	/* we don't want to allocate a power-of-2 sized page set */
	if (sysctl_nr_trim_pages && total - point >= sysctl_nr_trim_pages)
		total = point;

	base = FUNC1(total << PAGE_SHIFT, GFP_KERNEL);
	if (!base)
		goto enomem;

	FUNC2(total, &mmap_pages_allocated);

	region->vm_flags = vma->vm_flags |= VM_MAPPED_COPY;
	region->vm_start = (unsigned long) base;
	region->vm_end   = region->vm_start + len;
	region->vm_top   = region->vm_start + (total << PAGE_SHIFT);

	vma->vm_start = region->vm_start;
	vma->vm_end   = region->vm_start + len;

	if (vma->vm_file) {
		/* read the contents of a file into the copy */
		loff_t fpos;

		fpos = vma->vm_pgoff;
		fpos <<= PAGE_SHIFT;

		ret = FUNC6(vma->vm_file, base, len, &fpos);
		if (ret < 0)
			goto error_free;

		/* clear the last little bit */
		if (ret < len)
			FUNC7(base + ret, 0, len - ret);

	} else {
		FUNC10(vma);
	}

	return 0;

error_free:
	FUNC4(region->vm_start, region->vm_top);
	region->vm_start = vma->vm_start = 0;
	region->vm_end   = vma->vm_end = 0;
	region->vm_top   = 0;
	return ret;

enomem:
	FUNC8("Allocation of length %lu from process %d (%s) failed\n",
	       len, current->pid, current->comm);
	FUNC9(0, NULL);
	return -ENOMEM;
}