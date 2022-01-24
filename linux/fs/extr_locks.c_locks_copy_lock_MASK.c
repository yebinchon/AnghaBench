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
struct file_lock {TYPE_1__* fl_ops; int /*<<< orphan*/  fl_file; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fl_copy_lock ) (struct file_lock*,struct file_lock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*,struct file_lock*) ; 

void FUNC3(struct file_lock *new, struct file_lock *fl)
{
	/* "new" must be a freshly-initialized lock */
	FUNC0(new->fl_ops);

	FUNC1(new, fl);

	new->fl_file = fl->fl_file;
	new->fl_ops = fl->fl_ops;

	if (fl->fl_ops) {
		if (fl->fl_ops->fl_copy_lock)
			fl->fl_ops->fl_copy_lock(new, fl);
	}
}