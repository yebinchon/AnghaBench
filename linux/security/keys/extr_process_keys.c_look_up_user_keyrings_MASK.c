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
typedef  int uid_t ;
struct user_namespace {int /*<<< orphan*/  keyring_sem; } ;
struct key {int dummy; } ;
struct cred {TYPE_1__* user; } ;
typedef  struct key* key_ref_t ;
typedef  int key_perm_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_GID ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int KEY_ALLOC_IN_QUOTA ; 
 int KEY_ALLOC_UID_KEYRING ; 
 int KEY_POS_ALL ; 
 int KEY_POS_SETATTR ; 
 int KEY_USR_ALL ; 
 int FUNC2 (struct key*) ; 
 struct cred* FUNC3 () ; 
 struct user_namespace* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct key* FUNC7 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct key*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC11 (struct key*) ; 
 struct key* FUNC12 (struct key*) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 struct key* FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,int,int /*<<< orphan*/ *,struct key*) ; 
 struct key* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct key*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct key **_user_keyring,
			  struct key **_user_session_keyring)
{
	const struct cred *cred = FUNC3();
	struct user_namespace *user_ns = FUNC4();
	struct key *reg_keyring, *uid_keyring, *session_keyring;
	key_perm_t user_keyring_perm;
	key_ref_t uid_keyring_r, session_keyring_r;
	uid_t uid = FUNC6(user_ns, cred->user->uid);
	char buf[20];
	int ret;

	user_keyring_perm = (KEY_POS_ALL & ~KEY_POS_SETATTR) | KEY_USR_ALL;

	FUNC9("%u", uid);

	reg_keyring = FUNC7(user_ns);
	if (FUNC1(reg_keyring))
		return FUNC2(reg_keyring);

	FUNC5(&user_ns->keyring_sem);
	ret = 0;

	/* Get the user keyring.  Note that there may be one in existence
	 * already as it may have been pinned by a session, but the user_struct
	 * pointing to it may have been destroyed by setuid.
	 */
	FUNC17(buf, sizeof(buf), "_uid.%u", uid);
	uid_keyring_r = FUNC14(FUNC16(reg_keyring, true),
				       &key_type_keyring, buf, false);
	FUNC8("_uid %p", uid_keyring_r);
	if (uid_keyring_r == FUNC0(-EAGAIN)) {
		uid_keyring = FUNC13(buf, cred->user->uid, INVALID_GID,
					    cred, user_keyring_perm,
					    KEY_ALLOC_UID_KEYRING |
					    KEY_ALLOC_IN_QUOTA,
					    NULL, reg_keyring);
		if (FUNC1(uid_keyring)) {
			ret = FUNC2(uid_keyring);
			goto error;
		}
	} else if (FUNC1(uid_keyring_r)) {
		ret = FUNC2(uid_keyring_r);
		goto error;
	} else {
		uid_keyring = FUNC12(uid_keyring_r);
	}

	/* Get a default session keyring (which might also exist already) */
	FUNC17(buf, sizeof(buf), "_uid_ses.%u", uid);
	session_keyring_r = FUNC14(FUNC16(reg_keyring, true),
					   &key_type_keyring, buf, false);
	FUNC8("_uid_ses %p", session_keyring_r);
	if (session_keyring_r == FUNC0(-EAGAIN)) {
		session_keyring = FUNC13(buf, cred->user->uid, INVALID_GID,
						cred, user_keyring_perm,
						KEY_ALLOC_UID_KEYRING |
						KEY_ALLOC_IN_QUOTA,
						NULL, NULL);
		if (FUNC1(session_keyring)) {
			ret = FUNC2(session_keyring);
			goto error_release;
		}

		/* We install a link from the user session keyring to
		 * the user keyring.
		 */
		ret = FUNC10(session_keyring, uid_keyring);
		if (ret < 0)
			goto error_release_session;

		/* And only then link the user-session keyring to the
		 * register.
		 */
		ret = FUNC10(reg_keyring, session_keyring);
		if (ret < 0)
			goto error_release_session;
	} else if (FUNC1(session_keyring_r)) {
		ret = FUNC2(session_keyring_r);
		goto error_release;
	} else {
		session_keyring = FUNC12(session_keyring_r);
	}

	FUNC18(&user_ns->keyring_sem);

	if (_user_session_keyring)
		*_user_session_keyring = session_keyring;
	else
		FUNC11(session_keyring);
	if (_user_keyring)
		*_user_keyring = uid_keyring;
	else
		FUNC11(uid_keyring);
	FUNC15(" = 0");
	return 0;

error_release_session:
	FUNC11(session_keyring);
error_release:
	FUNC11(uid_keyring);
error:
	FUNC18(&user_ns->keyring_sem);
	FUNC15(" = %d", ret);
	return ret;
}