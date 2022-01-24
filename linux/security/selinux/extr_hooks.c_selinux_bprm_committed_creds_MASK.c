#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct task_security_struct {scalar_t__ osid; scalar_t__ sid; } ;
struct linux_binprm {int dummy; } ;
struct itimerval {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  real_parent; TYPE_2__* sighand; int /*<<< orphan*/  blocked; TYPE_1__* signal; int /*<<< orphan*/  pending; } ;
struct TYPE_8__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_7__ {int /*<<< orphan*/  shared_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_POSIX_TIMERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCESS__SIGINH ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct itimerval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct task_security_struct* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 

__attribute__((used)) static void FUNC16(struct linux_binprm *bprm)
{
	const struct task_security_struct *tsec = FUNC12(FUNC3());
	struct itimerval itimer;
	u32 osid, sid;
	int rc, i;

	osid = tsec->osid;
	sid = tsec->sid;

	if (sid == osid)
		return;

	/* Check whether the new SID can inherit signal state from the old SID.
	 * If not, clear itimers to avoid subsequent signal generation and
	 * flush and unblock signals.
	 *
	 * This must occur _after_ the task SID has been updated so that any
	 * kill done after the flush will be checked against the new SID.
	 */
	rc = FUNC2(&selinux_state,
			  osid, sid, SECCLASS_PROCESS, PROCESS__SIGINH, NULL);
	if (rc) {
		if (FUNC0(CONFIG_POSIX_TIMERS)) {
			FUNC8(&itimer, 0, sizeof itimer);
			for (i = 0; i < 3; i++)
				FUNC4(i, &itimer, NULL);
		}
		FUNC14(&current->sighand->siglock);
		if (!FUNC5(current)) {
			FUNC7(&current->pending);
			FUNC7(&current->signal->shared_pending);
			FUNC6(current, 1);
			FUNC13(&current->blocked);
			FUNC11();
		}
		FUNC15(&current->sighand->siglock);
	}

	/* Wake up the parent if it is waiting so that it can recheck
	 * wait permission to the new task SID. */
	FUNC9(&tasklist_lock);
	FUNC1(current, current->real_parent);
	FUNC10(&tasklist_lock);
}