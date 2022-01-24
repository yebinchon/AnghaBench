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
struct file {int /*<<< orphan*/  f_flags; int /*<<< orphan*/  f_path; } ;
struct TYPE_2__ {scalar_t__ in_execve; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct file *f)
{
	/* Don't check read permission here if called from do_execve(). */
	if (current->in_execve)
		return 0;
	return FUNC0(FUNC1(), &f->f_path,
					    f->f_flags);
}