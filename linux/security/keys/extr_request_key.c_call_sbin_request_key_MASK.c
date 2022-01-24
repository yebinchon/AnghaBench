#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_key_auth {scalar_t__ op; struct key* target_key; } ;
struct key {int serial; int /*<<< orphan*/  flags; } ;
struct cred {struct key* session_keyring; TYPE_2__* process_keyring; TYPE_1__* thread_keyring; int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
typedef  int key_serial_t ;
struct TYPE_4__ {int serial; } ;
struct TYPE_3__ {int serial; } ;

/* Variables and functions */
 int ENOKEY ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_QUOTA_OVERRUN ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int KEY_POS_ALL ; 
 int KEY_USR_READ ; 
 int KEY_USR_VIEW ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  UMH_WAIT_PROC ; 
 int FUNC2 (char const*,char**,char**,struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,int) ; 
 struct cred* FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cred* FUNC7 () ; 
 struct request_key_auth* FUNC8 (struct key*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,scalar_t__) ; 
 int FUNC11 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC12 (struct key*) ; 
 scalar_t__ FUNC13 (struct key*) ; 
 struct key* FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct key**) ; 
 int /*<<< orphan*/  FUNC17 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct key *authkey, void *aux)
{
	static char const request_key[] = "/sbin/request-key";
	struct request_key_auth *rka = FUNC8(authkey);
	const struct cred *cred = FUNC4();
	key_serial_t prkey, sskey;
	struct key *key = rka->target_key, *keyring, *session, *user_session;
	char *argv[9], *envp[3], uid_str[12], gid_str[12];
	char key_str[12], keyring_str[3][12];
	char desc[20];
	int ret, i;

	FUNC10("{%d},{%d},%s", key->serial, authkey->serial, rka->op);

	ret = FUNC16(NULL, &user_session);
	if (ret < 0)
		goto error_us;

	/* allocate a new session keyring */
	FUNC18(desc, "_req.%u", key->serial);

	cred = FUNC7();
	keyring = FUNC14(desc, cred->fsuid, cred->fsgid, cred,
				KEY_POS_ALL | KEY_USR_VIEW | KEY_USR_READ,
				KEY_ALLOC_QUOTA_OVERRUN, NULL, NULL);
	FUNC17(cred);
	if (FUNC0(keyring)) {
		ret = FUNC1(keyring);
		goto error_alloc;
	}

	/* attach the auth key to the session keyring */
	ret = FUNC11(keyring, authkey);
	if (ret < 0)
		goto error_link;

	/* record the UID and GID */
	FUNC18(uid_str, "%d", FUNC6(&init_user_ns, cred->fsuid));
	FUNC18(gid_str, "%d", FUNC5(&init_user_ns, cred->fsgid));

	/* we say which key is under construction */
	FUNC18(key_str, "%d", key->serial);

	/* we specify the process's default keyrings */
	FUNC18(keyring_str[0], "%d",
		cred->thread_keyring ? cred->thread_keyring->serial : 0);

	prkey = 0;
	if (cred->process_keyring)
		prkey = cred->process_keyring->serial;
	FUNC18(keyring_str[1], "%d", prkey);

	session = cred->session_keyring;
	if (!session)
		session = user_session;
	sskey = session->serial;

	FUNC18(keyring_str[2], "%d", sskey);

	/* set up a minimal environment */
	i = 0;
	envp[i++] = "HOME=/";
	envp[i++] = "PATH=/sbin:/bin:/usr/sbin:/usr/bin";
	envp[i] = NULL;

	/* set up the argument list */
	i = 0;
	argv[i++] = (char *)request_key;
	argv[i++] = (char *)rka->op;
	argv[i++] = key_str;
	argv[i++] = uid_str;
	argv[i++] = gid_str;
	argv[i++] = keyring_str[0];
	argv[i++] = keyring_str[1];
	argv[i++] = keyring_str[2];
	argv[i] = NULL;

	/* do it */
	ret = FUNC2(request_key, argv, envp, keyring,
				       UMH_WAIT_PROC);
	FUNC9("usermode -> 0x%x", ret);
	if (ret >= 0) {
		/* ret is the exit/wait code */
		if (FUNC19(KEY_FLAG_USER_CONSTRUCT, &key->flags) ||
		    FUNC13(key) < 0)
			ret = -ENOKEY;
		else
			/* ignore any errors from userspace if the key was
			 * instantiated */
			ret = 0;
	}

error_link:
	FUNC12(keyring);

error_alloc:
	FUNC12(user_session);
error_us:
	FUNC3(authkey, ret);
	FUNC15(" = %d", ret);
	return ret;
}