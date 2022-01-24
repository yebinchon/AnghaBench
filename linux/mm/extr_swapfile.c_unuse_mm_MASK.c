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
struct vm_area_struct {scalar_t__ anon_vma; struct vm_area_struct* vm_next; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vm_area_struct*,unsigned int,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mm_struct *mm, unsigned int type,
		    bool frontswap, unsigned long *fs_pages_to_unuse)
{
	struct vm_area_struct *vma;
	int ret = 0;

	FUNC1(&mm->mmap_sem);
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		if (vma->anon_vma) {
			ret = FUNC2(vma, type, frontswap,
					fs_pages_to_unuse);
			if (ret)
				break;
		}
		FUNC0();
	}
	FUNC3(&mm->mmap_sem);
	return ret;
}