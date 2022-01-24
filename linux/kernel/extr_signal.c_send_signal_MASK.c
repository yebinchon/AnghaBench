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
struct user_namespace {int dummy; } ;
struct task_struct {int dummy; } ;
struct kernel_siginfo {scalar_t__ si_code; scalar_t__ si_pid; int /*<<< orphan*/  si_uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 struct kernel_siginfo* SEND_SIG_NOINFO ; 
 struct kernel_siginfo* SEND_SIG_PRIV ; 
 scalar_t__ SI_KERNEL ; 
 int FUNC0 (int,struct kernel_siginfo*,struct task_struct*,int,int) ; 
 int /*<<< orphan*/  current ; 
 struct user_namespace* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kernel_siginfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 struct user_namespace* FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_ns ; 

__attribute__((used)) static int FUNC10(int sig, struct kernel_siginfo *info, struct task_struct *t,
			enum pid_type type)
{
	/* Should SIGKILL or SIGSTOP be received by a pid namespace init? */
	bool force = false;

	if (info == SEND_SIG_NOINFO) {
		/* Force if sent from an ancestor pid namespace */
		force = !FUNC9(current, FUNC7(t));
	} else if (info == SEND_SIG_PRIV) {
		/* Don't ignore kernel generated signals */
		force = true;
	} else if (FUNC3(info)) {
		/* SIGKILL and SIGSTOP is special or has ids */
		struct user_namespace *t_user_ns;

		FUNC5();
		t_user_ns = FUNC8(t, user_ns);
		if (FUNC1() != t_user_ns) {
			kuid_t uid = FUNC4(FUNC1(), info->si_uid);
			info->si_uid = FUNC2(t_user_ns, uid);
		}
		FUNC6();

		/* A kernel generated signal? */
		force = (info->si_code == SI_KERNEL);

		/* From an ancestor pid namespace? */
		if (!FUNC9(current, FUNC7(t))) {
			info->si_pid = 0;
			force = true;
		}
	}
	return FUNC0(sig, info, t, type, force);
}