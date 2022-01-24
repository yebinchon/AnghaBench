#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct aa_label {int dummy; } ;
struct TYPE_4__ {scalar_t__ dentry; } ;

/* Variables and functions */
 int EACCES ; 
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int FUNC2 (char const*,struct aa_label*,struct file*,int /*<<< orphan*/ ) ; 
 TYPE_2__ aa_null ; 

__attribute__((used)) static int FUNC3(const char *op, struct file *file, u32 mask)
{
	struct aa_label *label;
	int error = 0;

	/* don't reaudit files closed during inheritance */
	if (file->f_path.dentry == aa_null.dentry)
		return -EACCES;

	label = FUNC0();
	error = FUNC2(op, label, file, mask);
	FUNC1(label);

	return error;
}