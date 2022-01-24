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
struct key {long serial; } ;
struct cred {struct key* session_keyring; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 long ENOKEY ; 
 long ENOMEM ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_IN_QUOTA ; 
 int KEY_POS_ALL ; 
 int KEY_USR_LINK ; 
 int KEY_USR_READ ; 
 int KEY_USR_VIEW ; 
 long FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct cred*) ; 
 long FUNC3 (struct cred*) ; 
 struct cred* FUNC4 () ; 
 struct key* FUNC5 (char const*,int) ; 
 long FUNC6 (struct cred*,struct key*) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  key_session_mutex ; 
 struct key* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cred* FUNC11 () ; 

long FUNC12(const char *name)
{
	const struct cred *old;
	struct cred *new;
	struct key *keyring;
	long ret, serial;

	new = FUNC11();
	if (!new)
		return -ENOMEM;
	old = FUNC4();

	/* if no name is provided, install an anonymous keyring */
	if (!name) {
		ret = FUNC6(new, NULL);
		if (ret < 0)
			goto error;

		serial = new->session_keyring->serial;
		ret = FUNC3(new);
		if (ret == 0)
			ret = serial;
		goto okay;
	}

	/* allow the user to join or create a named keyring */
	FUNC9(&key_session_mutex);

	/* look for an existing keyring of this name */
	keyring = FUNC5(name, false);
	if (FUNC1(keyring) == -ENOKEY) {
		/* not found - try and create a new one */
		keyring = FUNC8(
			name, old->uid, old->gid, old,
			KEY_POS_ALL | KEY_USR_VIEW | KEY_USR_READ | KEY_USR_LINK,
			KEY_ALLOC_IN_QUOTA, NULL, NULL);
		if (FUNC0(keyring)) {
			ret = FUNC1(keyring);
			goto error2;
		}
	} else if (FUNC0(keyring)) {
		ret = FUNC1(keyring);
		goto error2;
	} else if (keyring == new->session_keyring) {
		ret = 0;
		goto error3;
	}

	/* we've got a keyring - now to install it */
	ret = FUNC6(new, keyring);
	if (ret < 0)
		goto error3;

	FUNC3(new);
	FUNC10(&key_session_mutex);

	ret = keyring->serial;
	FUNC7(keyring);
okay:
	return ret;

error3:
	FUNC7(keyring);
error2:
	FUNC10(&key_session_mutex);
error:
	FUNC2(new);
	return ret;
}