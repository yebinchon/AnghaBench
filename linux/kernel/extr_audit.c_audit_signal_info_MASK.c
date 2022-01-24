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
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int SIGHUP ; 
 int SIGTERM ; 
 int SIGUSR1 ; 
 int SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audit_sig_pid ; 
 int /*<<< orphan*/  audit_sig_sid ; 
 int /*<<< orphan*/  audit_sig_uid ; 
 int FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int sig, struct task_struct *t)
{
	kuid_t uid = FUNC3(), auid;

	if (FUNC2(t) &&
	    (sig == SIGTERM || sig == SIGHUP ||
	     sig == SIGUSR1 || sig == SIGUSR2)) {
		audit_sig_pid = FUNC5(current);
		auid = FUNC0(current);
		if (FUNC6(auid))
			audit_sig_uid = auid;
		else
			audit_sig_uid = uid;
		FUNC4(current, &audit_sig_sid);
	}

	return FUNC1(t);
}