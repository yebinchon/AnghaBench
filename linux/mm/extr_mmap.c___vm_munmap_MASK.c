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
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mm_struct*,unsigned long,size_t,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(unsigned long start, size_t len, bool downgrade)
{
	int ret;
	struct mm_struct *mm = current->mm;
	FUNC0(uf);

	if (FUNC2(&mm->mmap_sem))
		return -EINTR;

	ret = FUNC1(mm, start, len, &uf, downgrade);
	/*
	 * Returning 1 indicates mmap_sem is downgraded.
	 * But 1 is not legal return value of vm_munmap() and munmap(), reset
	 * it to 0 before return.
	 */
	if (ret == 1) {
		FUNC3(&mm->mmap_sem);
		ret = 0;
	} else
		FUNC4(&mm->mmap_sem);

	FUNC5(mm, &uf);
	return ret;
}