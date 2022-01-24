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
struct mm_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_path; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct file* FUNC1 (struct mm_struct*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

const char *FUNC3(void)
{
	struct file *exe_file;
	const char *cp;
	struct mm_struct *mm = current->mm;

	if (!mm)
		return NULL;
	exe_file = FUNC1(mm);
	if (!exe_file)
		return NULL;

	cp = FUNC2(&exe_file->f_path);
	FUNC0(exe_file);
	return cp;
}