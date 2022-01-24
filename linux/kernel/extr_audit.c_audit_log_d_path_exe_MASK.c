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
struct mm_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_path; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct file* FUNC3 (struct mm_struct*) ; 

void FUNC4(struct audit_buffer *ab,
			  struct mm_struct *mm)
{
	struct file *exe_file;

	if (!mm)
		goto out_null;

	exe_file = FUNC3(mm);
	if (!exe_file)
		goto out_null;

	FUNC0(ab, " exe=", &exe_file->f_path);
	FUNC2(exe_file);
	return;
out_null:
	FUNC1(ab, " exe=(null)");
}