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
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 unsigned long FUNC1 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (struct file*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  uf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 

unsigned long FUNC7(struct file *file, unsigned long addr,
	unsigned long len, unsigned long prot,
	unsigned long flag, unsigned long pgoff)
{
	unsigned long ret;
	struct mm_struct *mm = current->mm;
	unsigned long populate;
	FUNC0(uf);

	ret = FUNC4(file, prot, flag);
	if (!ret) {
		if (FUNC2(&mm->mmap_sem))
			return -EINTR;
		ret = FUNC1(file, addr, len, prot, flag, pgoff,
				    &populate, &uf);
		FUNC5(&mm->mmap_sem);
		FUNC6(mm, &uf);
		if (populate)
			FUNC3(ret, populate);
	}
	return ret;
}