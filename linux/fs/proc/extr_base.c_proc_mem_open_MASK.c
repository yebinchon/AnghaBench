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
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct mm_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 unsigned int PTRACE_MODE_FSCREDS ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 struct mm_struct* FUNC3 (struct task_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

struct mm_struct *FUNC7(struct inode *inode, unsigned int mode)
{
	struct task_struct *task = FUNC2(inode);
	struct mm_struct *mm = FUNC0(-ESRCH);

	if (task) {
		mm = FUNC3(task, mode | PTRACE_MODE_FSCREDS);
		FUNC6(task);

		if (!FUNC1(mm)) {
			/* ensure this mm_struct can't be freed */
			FUNC4(mm);
			/* but do not pin its memory */
			FUNC5(mm);
		}
	}

	return mm;
}