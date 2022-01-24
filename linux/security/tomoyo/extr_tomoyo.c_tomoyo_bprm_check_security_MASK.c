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
struct tomoyo_task {int /*<<< orphan*/  domain_info; int /*<<< orphan*/  old_domain_info; } ;
struct linux_binprm {TYPE_1__* file; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct linux_binprm*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 struct tomoyo_task* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct linux_binprm *bprm)
{
	struct tomoyo_task *s = FUNC4(current);

	/*
	 * Execute permission is checked against pathname passed to do_execve()
	 * using current domain.
	 */
	if (!s->old_domain_info) {
		const int idx = FUNC2();
		const int err = FUNC1(bprm);

		FUNC3(idx);
		return err;
	}
	/*
	 * Read permission is checked against interpreters using next domain.
	 */
	return FUNC0(s->domain_info,
					    &bprm->file->f_path, O_RDONLY);
}