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
struct vm_area_struct {unsigned long vm_start; TYPE_1__* vm_ops; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {int (* access ) (struct vm_area_struct*,unsigned long,void*,int,int) ;} ;

/* Variables and functions */
 unsigned int FOLL_WRITE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,struct page*,unsigned long,void*,void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 int FUNC4 (struct task_struct*,struct mm_struct*,unsigned long,int,unsigned int,struct page**,struct vm_area_struct**,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct vm_area_struct*,unsigned long,void*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct task_struct *tsk, struct mm_struct *mm,
		unsigned long addr, void *buf, int len, unsigned int gup_flags)
{
	struct vm_area_struct *vma;
	void *old_buf = buf;
	int write = gup_flags & FOLL_WRITE;

	if (FUNC2(&mm->mmap_sem))
		return 0;

	/* ignore errors, just check how much was successfully transferred */
	while (len) {
		int bytes, ret, offset;
		void *maddr;
		struct page *page = NULL;

		ret = FUNC4(tsk, mm, addr, 1,
				gup_flags, &page, &vma, NULL);
		if (ret <= 0) {
#ifndef CONFIG_HAVE_IOREMAP_PROT
			break;
#else
			/*
			 * Check if this is a VM_IO | VM_PFNMAP VMA, which
			 * we can access using slightly different code.
			 */
			vma = find_vma(mm, addr);
			if (!vma || vma->vm_start > addr)
				break;
			if (vma->vm_ops && vma->vm_ops->access)
				ret = vma->vm_ops->access(vma, addr, buf,
							  len, write);
			if (ret <= 0)
				break;
			bytes = ret;
#endif
		} else {
			bytes = len;
			offset = addr & (PAGE_SIZE-1);
			if (bytes > PAGE_SIZE-offset)
				bytes = PAGE_SIZE-offset;

			maddr = FUNC5(page);
			if (write) {
				FUNC1(vma, page, addr,
						  maddr + offset, buf, bytes);
				FUNC8(page);
			} else {
				FUNC0(vma, page, addr,
						    buf, maddr + offset, bytes);
			}
			FUNC6(page);
			FUNC7(page);
		}
		len -= bytes;
		buf += bytes;
		addr += bytes;
	}
	FUNC10(&mm->mmap_sem);

	return buf - old_buf;
}