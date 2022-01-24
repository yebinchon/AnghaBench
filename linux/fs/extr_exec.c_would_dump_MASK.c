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
struct user_namespace {struct user_namespace* parent; } ;
struct linux_binprm {TYPE_1__* mm; int /*<<< orphan*/  interp_flags; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct user_namespace* user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINPRM_FLAGS_ENFORCE_NONDUMP ; 
 int /*<<< orphan*/  MAY_READ ; 
 struct inode* FUNC0 (struct file*) ; 
 struct user_namespace* FUNC1 (struct user_namespace*) ; 
 struct user_namespace init_user_ns ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct user_namespace*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*) ; 

void FUNC5(struct linux_binprm *bprm, struct file *file)
{
	struct inode *inode = FUNC0(file);
	if (FUNC2(inode, MAY_READ) < 0) {
		struct user_namespace *old, *user_ns;
		bprm->interp_flags |= BINPRM_FLAGS_ENFORCE_NONDUMP;

		/* Ensure mm->user_ns contains the executable */
		user_ns = old = bprm->mm->user_ns;
		while ((user_ns != &init_user_ns) &&
		       !FUNC3(user_ns, inode))
			user_ns = user_ns->parent;

		if (old != user_ns) {
			bprm->mm->user_ns = FUNC1(user_ns);
			FUNC4(old);
		}
	}
}