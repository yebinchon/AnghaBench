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
struct key {int dummy; } ;
struct cred {struct key* session_keyring; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 unsigned long KEY_ALLOC_IN_QUOTA ; 
 unsigned long KEY_ALLOC_QUOTA_OVERRUN ; 
 int KEY_POS_ALL ; 
 int KEY_USR_READ ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 struct key* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*,int,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct cred *cred, struct key *keyring)
{
	unsigned long flags;
	struct key *old;

	FUNC5();

	/* create an empty session keyring */
	if (!keyring) {
		flags = KEY_ALLOC_QUOTA_OVERRUN;
		if (cred->session_keyring)
			flags = KEY_ALLOC_IN_QUOTA;

		keyring = FUNC4("_ses", cred->uid, cred->gid, cred,
					KEY_POS_ALL | KEY_USR_VIEW | KEY_USR_READ,
					flags, NULL, NULL);
		if (FUNC0(keyring))
			return FUNC1(keyring);
	} else {
		FUNC2(keyring);
	}

	/* install the keyring */
	old = cred->session_keyring;
	cred->session_keyring = keyring;

	if (old)
		FUNC3(old);

	return 0;
}