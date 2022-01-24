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
struct task_struct {int /*<<< orphan*/  group_leader; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
#define  PR_SET_PTRACER 128 
 unsigned long PR_SET_PTRACER_ANY ; 
 struct task_struct* current ; 
 struct task_struct* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int FUNC7 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct task_struct*) ; 

__attribute__((used)) static int FUNC9(int option, unsigned long arg2, unsigned long arg3,
			   unsigned long arg4, unsigned long arg5)
{
	int rc = -ENOSYS;
	struct task_struct *myself = current;

	switch (option) {
	case PR_SET_PTRACER:
		/* Since a thread can call prctl(), find the group leader
		 * before calling _add() or _del() on it, since we want
		 * process-level granularity of control. The tracer group
		 * leader checking is handled later when walking the ancestry
		 * at the time of PTRACE_ATTACH check.
		 */
		FUNC4();
		if (!FUNC6(myself))
			myself = FUNC3(myself->group_leader);
		FUNC1(myself);
		FUNC5();

		if (arg2 == 0) {
			FUNC8(NULL, myself);
			rc = 0;
		} else if (arg2 == PR_SET_PTRACER_ANY || (int)arg2 == -1) {
			rc = FUNC7(NULL, myself);
		} else {
			struct task_struct *tracer;

			tracer = FUNC0(arg2);
			if (!tracer) {
				rc = -EINVAL;
			} else {
				rc = FUNC7(tracer, myself);
				FUNC2(tracer);
			}
		}

		FUNC2(myself);
		break;
	}

	return rc;
}