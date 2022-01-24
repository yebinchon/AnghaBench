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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 unsigned int PTRACE_MODE_ATTACH ; 
 unsigned int PTRACE_MODE_NOAUDIT ; 
#define  YAMA_SCOPE_CAPABILITY 131 
#define  YAMA_SCOPE_DISABLED 130 
#define  YAMA_SCOPE_NO_ATTACH 129 
#define  YAMA_SCOPE_RELATIONAL 128 
 TYPE_1__* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int ptrace_scope ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct task_struct*) ; 

__attribute__((used)) static int FUNC8(struct task_struct *child,
				    unsigned int mode)
{
	int rc = 0;

	/* require ptrace target be a child of ptracer on attach */
	if (mode & PTRACE_MODE_ATTACH) {
		switch (ptrace_scope) {
		case YAMA_SCOPE_DISABLED:
			/* No additional restrictions. */
			break;
		case YAMA_SCOPE_RELATIONAL:
			FUNC4();
			if (!FUNC2(child))
				rc = -EPERM;
			if (!rc && !FUNC7(current, child) &&
			    !FUNC3(current, child) &&
			    !FUNC1(FUNC0(child)->user_ns, CAP_SYS_PTRACE))
				rc = -EPERM;
			FUNC5();
			break;
		case YAMA_SCOPE_CAPABILITY:
			FUNC4();
			if (!FUNC1(FUNC0(child)->user_ns, CAP_SYS_PTRACE))
				rc = -EPERM;
			FUNC5();
			break;
		case YAMA_SCOPE_NO_ATTACH:
		default:
			rc = -EPERM;
			break;
		}
	}

	if (rc && (mode & PTRACE_MODE_NOAUDIT) == 0)
		FUNC6("attach", child, current);

	return rc;
}