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
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 struct mm_struct* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 unsigned long FUNC4 (struct mm_struct*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ; 

int FUNC5(struct seq_file *m, struct pid_namespace *ns,
			struct pid *pid, struct task_struct *task)
{
	unsigned long size = 0, resident = 0, shared = 0, text = 0, data = 0;
	struct mm_struct *mm = FUNC0(task);

	if (mm) {
		size = FUNC4(mm, &shared, &text, &data, &resident);
		FUNC1(mm);
	}
	/*
	 * For quick read, open code by putting numbers directly
	 * expected format is
	 * seq_printf(m, "%lu %lu %lu %lu 0 %lu 0\n",
	 *               size, resident, shared, text, data);
	 */
	FUNC2(m, "", size);
	FUNC2(m, " ", resident);
	FUNC2(m, " ", shared);
	FUNC2(m, " ", text);
	FUNC2(m, " ", 0);
	FUNC2(m, " ", data);
	FUNC2(m, " ", 0);
	FUNC3(m, '\n');

	return 0;
}