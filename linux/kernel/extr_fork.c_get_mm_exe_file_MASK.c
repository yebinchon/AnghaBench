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
struct mm_struct {int /*<<< orphan*/  exe_file; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 struct file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct file *FUNC4(struct mm_struct *mm)
{
	struct file *exe_file;

	FUNC2();
	exe_file = FUNC1(mm->exe_file);
	if (exe_file && !FUNC0(exe_file))
		exe_file = NULL;
	FUNC3();
	return exe_file;
}