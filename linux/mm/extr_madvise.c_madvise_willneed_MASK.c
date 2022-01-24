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
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_mm; struct file* vm_file; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
typedef  int loff_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 long EBADF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  POSIX_FADV_WILLNEED ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swapin_walk_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct file*,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *,struct vm_area_struct*) ; 

__attribute__((used)) static long FUNC11(struct vm_area_struct *vma,
			     struct vm_area_struct **prev,
			     unsigned long start, unsigned long end)
{
	struct file *file = vma->vm_file;
	loff_t offset;

	*prev = vma;
#ifdef CONFIG_SWAP
	if (!file) {
		walk_page_range(vma->vm_mm, start, end, &swapin_walk_ops, vma);
		lru_add_drain(); /* Push any new pages onto the LRU now */
		return 0;
	}

	if (shmem_mapping(file->f_mapping)) {
		force_shm_swapin_readahead(vma, start, end,
					file->f_mapping);
		return 0;
	}
#else
	if (!file)
		return -EBADF;
#endif

	if (FUNC0(FUNC2(file))) {
		/* no bad return value, but ignore advice */
		return 0;
	}

	/*
	 * Filesystem's fadvise may need to take various locks.  We need to
	 * explicitly grab a reference because the vma (and hence the
	 * vma's reference to the file) can go away as soon as we drop
	 * mmap_sem.
	 */
	*prev = NULL;	/* tell sys_madvise we drop mmap_sem */
	FUNC5(file);
	FUNC8(&current->mm->mmap_sem);
	offset = (loff_t)(start - vma->vm_start)
			+ ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
	FUNC9(file, offset, end - start, POSIX_FADV_WILLNEED);
	FUNC4(file);
	FUNC1(&current->mm->mmap_sem);
	return 0;
}