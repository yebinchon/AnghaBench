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
struct cred {int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 scalar_t__ SIDPOL_CONSTRAINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const struct cred *old, kuid_t new_uid)
{
	bool permitted;

	/* If our old creds already had this UID in it, it's fine. */
	if (FUNC3(new_uid, old->uid) || FUNC3(new_uid, old->euid) ||
	    FUNC3(new_uid, old->suid))
		return true;

	/*
	 * Transitions to new UIDs require a check against the policy of the old
	 * RUID.
	 */
	permitted =
	    FUNC2(old->uid, new_uid) != SIDPOL_CONSTRAINED;
	if (!permitted) {
		FUNC1("UID transition ((%d,%d,%d) -> %d) blocked\n",
			FUNC0(old->uid), FUNC0(old->euid),
			FUNC0(old->suid), FUNC0(new_uid));
	}
	return permitted;
}