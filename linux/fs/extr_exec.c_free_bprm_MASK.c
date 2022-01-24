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
struct linux_binprm {scalar_t__ interp; scalar_t__ filename; scalar_t__ file; scalar_t__ cred; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC4 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct linux_binprm *bprm)
{
	FUNC3(bprm);
	if (bprm->cred) {
		FUNC5(&current->signal->cred_guard_mutex);
		FUNC0(bprm->cred);
	}
	if (bprm->file) {
		FUNC1(bprm->file);
		FUNC2(bprm->file);
	}
	/* If a binfmt changed the interp, free it. */
	if (bprm->interp != bprm->filename)
		FUNC4(bprm->interp);
	FUNC4(bprm);
}