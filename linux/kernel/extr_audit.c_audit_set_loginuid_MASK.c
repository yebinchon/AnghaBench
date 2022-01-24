#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_4__ {unsigned int sessionid; int /*<<< orphan*/  loginuid; } ;

/* Variables and functions */
 unsigned int AUDIT_SID_UNSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  session_id ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(kuid_t loginuid)
{
	unsigned int oldsessionid, sessionid = AUDIT_SID_UNSET;
	kuid_t oldloginuid;
	int rc;

	oldloginuid = FUNC1(current);
	oldsessionid = FUNC2(current);

	rc = FUNC4(loginuid);
	if (rc)
		goto out;

	/* are we setting or clearing? */
	if (FUNC5(loginuid)) {
		sessionid = (unsigned int)FUNC0(&session_id);
		if (FUNC6(sessionid == AUDIT_SID_UNSET))
			sessionid = (unsigned int)FUNC0(&session_id);
	}

	current->sessionid = sessionid;
	current->loginuid = loginuid;
out:
	FUNC3(oldloginuid, loginuid, oldsessionid, sessionid, rc);
	return rc;
}