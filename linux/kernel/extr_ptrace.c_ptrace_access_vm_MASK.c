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
struct task_struct {scalar_t__ parent; int /*<<< orphan*/  ptrace; } ;
struct mm_struct {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 scalar_t__ SUID_DUMP_USER ; 
 int FUNC0 (struct task_struct*,struct mm_struct*,unsigned long,void*,int,unsigned int) ; 
 scalar_t__ current ; 
 scalar_t__ FUNC1 (struct mm_struct*) ; 
 struct mm_struct* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 

int FUNC5(struct task_struct *tsk, unsigned long addr,
		     void *buf, int len, unsigned int gup_flags)
{
	struct mm_struct *mm;
	int ret;

	mm = FUNC2(tsk);
	if (!mm)
		return 0;

	if (!tsk->ptrace ||
	    (current != tsk->parent) ||
	    ((FUNC1(mm) != SUID_DUMP_USER) &&
	     !FUNC4(tsk, mm->user_ns))) {
		FUNC3(mm);
		return 0;
	}

	ret = FUNC0(tsk, mm, addr, buf, len, gup_flags);
	FUNC3(mm);

	return ret;
}