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
struct vm_area_struct {TYPE_1__* vm_file; int /*<<< orphan*/  vm_page_prot; } ;
struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_2__ {struct inode* f_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int EFAULT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct mm_struct *dst_mm,
			      pmd_t *dst_pmd,
			      struct vm_area_struct *dst_vma,
			      unsigned long dst_addr)
{
	pte_t _dst_pte, *dst_pte;
	spinlock_t *ptl;
	int ret;
	pgoff_t offset, max_off;
	struct inode *inode;

	_dst_pte = FUNC5(FUNC4(FUNC3(dst_addr),
					 dst_vma->vm_page_prot));
	dst_pte = FUNC7(dst_mm, dst_pmd, dst_addr, &ptl);
	if (dst_vma->vm_file) {
		/* the shmem MAP_PRIVATE case requires checking the i_size */
		inode = dst_vma->vm_file->f_inode;
		offset = FUNC2(dst_vma, dst_addr);
		max_off = FUNC0(FUNC1(inode), PAGE_SIZE);
		ret = -EFAULT;
		if (FUNC10(offset >= max_off))
			goto out_unlock;
	}
	ret = -EEXIST;
	if (!FUNC6(*dst_pte))
		goto out_unlock;
	FUNC9(dst_mm, dst_addr, dst_pte, _dst_pte);
	/* No need to invalidate - it was non-present before */
	FUNC11(dst_vma, dst_addr, dst_pte);
	ret = 0;
out_unlock:
	FUNC8(dst_pte, ptl);
	return ret;
}