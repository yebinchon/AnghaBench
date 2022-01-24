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
struct mm_struct {int def_flags; int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int VM_LOCKED ; 
 TYPE_1__* current ; 
 int FUNC2 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  uf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 

int FUNC7(unsigned long addr, unsigned long request, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	unsigned long len;
	int ret;
	bool populate;
	FUNC0(uf);

	len = FUNC1(request);
	if (len < request)
		return -ENOMEM;
	if (!len)
		return 0;

	if (FUNC3(&mm->mmap_sem))
		return -EINTR;

	ret = FUNC2(addr, len, flags, &uf);
	populate = ((mm->def_flags & VM_LOCKED) != 0);
	FUNC5(&mm->mmap_sem);
	FUNC6(mm, &uf);
	if (populate && !ret)
		FUNC4(addr, len);
	return ret;
}