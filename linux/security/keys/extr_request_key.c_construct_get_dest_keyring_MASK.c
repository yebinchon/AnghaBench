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
struct request_key_auth {struct key* dest_keyring; } ;
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; } ;
struct cred {int jit_keyring; struct key* session_keyring; struct key* process_keyring; struct key* thread_keyring; struct key* request_key_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
#define  KEY_REQKEY_DEFL_DEFAULT 135 
#define  KEY_REQKEY_DEFL_GROUP_KEYRING 134 
#define  KEY_REQKEY_DEFL_PROCESS_KEYRING 133 
#define  KEY_REQKEY_DEFL_REQUESTOR_KEYRING 132 
#define  KEY_REQKEY_DEFL_SESSION_KEYRING 131 
#define  KEY_REQKEY_DEFL_THREAD_KEYRING 130 
#define  KEY_REQKEY_DEFL_USER_KEYRING 129 
#define  KEY_REQKEY_DEFL_USER_SESSION_KEYRING 128 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct request_key_auth* FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct key*) ; 
 struct key* FUNC5 (struct key*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct key**,struct key**) ; 
 int /*<<< orphan*/  FUNC11 (struct key*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct key **_dest_keyring)
{
	struct request_key_auth *rka;
	const struct cred *cred = FUNC1();
	struct key *dest_keyring = *_dest_keyring, *authkey;
	int ret;

	FUNC4("%p", dest_keyring);

	/* find the appropriate keyring */
	if (dest_keyring) {
		/* the caller supplied one */
		FUNC5(dest_keyring);
	} else {
		bool do_perm_check = true;

		/* use a default keyring; falling through the cases until we
		 * find one that we actually have */
		switch (cred->jit_keyring) {
		case KEY_REQKEY_DEFL_DEFAULT:
		case KEY_REQKEY_DEFL_REQUESTOR_KEYRING:
			if (cred->request_key_auth) {
				authkey = cred->request_key_auth;
				FUNC2(&authkey->sem);
				rka = FUNC3(authkey);
				if (!FUNC12(KEY_FLAG_REVOKED,
					      &authkey->flags))
					dest_keyring =
						FUNC5(rka->dest_keyring);
				FUNC13(&authkey->sem);
				if (dest_keyring) {
					do_perm_check = false;
					break;
				}
			}

			/* fall through */
		case KEY_REQKEY_DEFL_THREAD_KEYRING:
			dest_keyring = FUNC5(cred->thread_keyring);
			if (dest_keyring)
				break;

			/* fall through */
		case KEY_REQKEY_DEFL_PROCESS_KEYRING:
			dest_keyring = FUNC5(cred->process_keyring);
			if (dest_keyring)
				break;

			/* fall through */
		case KEY_REQKEY_DEFL_SESSION_KEYRING:
			dest_keyring = FUNC5(cred->session_keyring);

			if (dest_keyring)
				break;

			/* fall through */
		case KEY_REQKEY_DEFL_USER_SESSION_KEYRING:
			ret = FUNC10(NULL, &dest_keyring);
			if (ret < 0)
				return ret;
			break;

		case KEY_REQKEY_DEFL_USER_KEYRING:
			ret = FUNC10(&dest_keyring, NULL);
			if (ret < 0)
				return ret;
			break;

		case KEY_REQKEY_DEFL_GROUP_KEYRING:
		default:
			FUNC0();
		}

		/*
		 * Require Write permission on the keyring.  This is essential
		 * because the default keyring may be the session keyring, and
		 * joining a keyring only requires Search permission.
		 *
		 * However, this check is skipped for the "requestor keyring" so
		 * that /sbin/request-key can itself use request_key() to add
		 * keys to the original requestor's destination keyring.
		 */
		if (dest_keyring && do_perm_check) {
			ret = FUNC6(FUNC11(dest_keyring, 1),
					     KEY_NEED_WRITE);
			if (ret) {
				FUNC7(dest_keyring);
				return ret;
			}
		}
	}

	*_dest_keyring = dest_keyring;
	FUNC9(" [dk %d]", FUNC8(dest_keyring));
	return 0;
}