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
struct vm_area_struct {int vm_flags; unsigned long vm_end; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct frame_vector {unsigned int nr_allocated; int got_ref; int is_pfns; int nr_frames; scalar_t__ ptrs; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
 unsigned long PAGE_SIZE ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,unsigned long,unsigned long) ; 
 int FUNC3 (struct vm_area_struct*,unsigned long,unsigned long*) ; 
 unsigned long* FUNC4 (struct frame_vector*) ; 
 int FUNC5 (unsigned long,unsigned int,unsigned int,struct page**,int*) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct vm_area_struct*) ; 

int FUNC9(unsigned long start, unsigned int nr_frames,
		     unsigned int gup_flags, struct frame_vector *vec)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	int ret = 0;
	int err;
	int locked;

	if (nr_frames == 0)
		return 0;

	if (FUNC0(nr_frames > vec->nr_allocated))
		nr_frames = vec->nr_allocated;

	start = FUNC6(start);

	FUNC1(&mm->mmap_sem);
	locked = 1;
	vma = FUNC2(mm, start, start + 1);
	if (!vma) {
		ret = -EFAULT;
		goto out;
	}

	/*
	 * While get_vaddr_frames() could be used for transient (kernel
	 * controlled lifetime) pinning of memory pages all current
	 * users establish long term (userspace controlled lifetime)
	 * page pinning. Treat get_vaddr_frames() like
	 * get_user_pages_longterm() and disallow it for filesystem-dax
	 * mappings.
	 */
	if (FUNC8(vma)) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	if (!(vma->vm_flags & (VM_IO | VM_PFNMAP))) {
		vec->got_ref = true;
		vec->is_pfns = false;
		ret = FUNC5(start, nr_frames,
			gup_flags, (struct page **)(vec->ptrs), &locked);
		goto out;
	}

	vec->got_ref = false;
	vec->is_pfns = true;
	do {
		unsigned long *nums = FUNC4(vec);

		while (ret < nr_frames && start + PAGE_SIZE <= vma->vm_end) {
			err = FUNC3(vma, start, &nums[ret]);
			if (err) {
				if (ret == 0)
					ret = err;
				goto out;
			}
			start += PAGE_SIZE;
			ret++;
		}
		/*
		 * We stop if we have enough pages or if VMA doesn't completely
		 * cover the tail page.
		 */
		if (ret >= nr_frames || start < vma->vm_end)
			break;
		vma = FUNC2(mm, start, start + 1);
	} while (vma && vma->vm_flags & (VM_IO | VM_PFNMAP));
out:
	if (locked)
		FUNC7(&mm->mmap_sem);
	if (!ret)
		ret = -EFAULT;
	if (ret > 0)
		vec->nr_frames = ret;
	return ret;
}