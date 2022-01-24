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
 TYPE_1__* current ; 
 int FUNC0 (struct mm_struct*,unsigned long,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(unsigned long addr, size_t len)
{
	struct mm_struct *mm = current->mm;
	int ret;

	FUNC1(&mm->mmap_sem);
	ret = FUNC0(mm, addr, len, NULL);
	FUNC2(&mm->mmap_sem);
	return ret;
}