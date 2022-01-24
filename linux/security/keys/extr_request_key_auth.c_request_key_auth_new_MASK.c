#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_key_auth {size_t callout_len; void* dest_keyring; void* target_key; int /*<<< orphan*/  pid; struct cred const* cred; int /*<<< orphan*/  op; int /*<<< orphan*/  callout_info; } ;
struct key {int serial; int /*<<< orphan*/  usage; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; TYPE_2__* request_key_auth; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {struct request_key_auth** data; } ;
struct TYPE_5__ {int /*<<< orphan*/  sem; TYPE_1__ payload; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EKEYREVOKED ; 
 int ENOMEM ; 
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int KEY_POS_LINK ; 
 int KEY_POS_READ ; 
 int KEY_POS_SEARCH ; 
 int KEY_POS_VIEW ; 
 int KEY_USR_VIEW ; 
 int FUNC2 (struct key*) ; 
 TYPE_3__* current ; 
 struct cred* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct request_key_auth*) ; 
 void* FUNC6 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 struct key* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct key*) ; 
 int FUNC10 (struct key*,struct request_key_auth*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct key*) ; 
 int /*<<< orphan*/  key_type_request_key_auth ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (void const*,size_t,int /*<<< orphan*/ ) ; 
 struct request_key_auth* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

struct key *FUNC20(struct key *target, const char *op,
				 const void *callout_info, size_t callout_len,
				 struct key *dest_keyring)
{
	struct request_key_auth *rka, *irka;
	const struct cred *cred = FUNC3();
	struct key *authkey = NULL;
	char desc[20];
	int ret = -ENOMEM;

	FUNC7("%d,", target->serial);

	/* allocate a auth record */
	rka = FUNC14(sizeof(*rka), GFP_KERNEL);
	if (!rka)
		goto error;
	rka->callout_info = FUNC13(callout_info, callout_len, GFP_KERNEL);
	if (!rka->callout_info)
		goto error_free_rka;
	rka->callout_len = callout_len;
	FUNC17(rka->op, op, sizeof(rka->op));

	/* see if the calling process is already servicing the key request of
	 * another process */
	if (cred->request_key_auth) {
		/* it is - use that instantiation context here too */
		FUNC4(&cred->request_key_auth->sem);

		/* if the auth key has been revoked, then the key we're
		 * servicing is already instantiated */
		if (FUNC18(KEY_FLAG_REVOKED,
			     &cred->request_key_auth->flags)) {
			FUNC19(&cred->request_key_auth->sem);
			ret = -EKEYREVOKED;
			goto error_free_rka;
		}

		irka = cred->request_key_auth->payload.data[0];
		rka->cred = FUNC6(irka->cred);
		rka->pid = irka->pid;

		FUNC19(&cred->request_key_auth->sem);
	}
	else {
		/* it isn't - use this process as the context */
		rka->cred = FUNC6(cred);
		rka->pid = current->pid;
	}

	rka->target_key = FUNC9(target);
	rka->dest_keyring = FUNC9(dest_keyring);

	/* allocate the auth key */
	FUNC16(desc, "%x", target->serial);

	authkey = FUNC8(&key_type_request_key_auth, desc,
			    cred->fsuid, cred->fsgid, cred,
			    KEY_POS_VIEW | KEY_POS_READ | KEY_POS_SEARCH | KEY_POS_LINK |
			    KEY_USR_VIEW, KEY_ALLOC_NOT_IN_QUOTA, NULL);
	if (FUNC1(authkey)) {
		ret = FUNC2(authkey);
		goto error_free_rka;
	}

	/* construct the auth key */
	ret = FUNC10(authkey, rka, 0, NULL, NULL);
	if (ret < 0)
		goto error_put_authkey;

	FUNC12(" = {%d,%d}", authkey->serial, FUNC15(&authkey->usage));
	return authkey;

error_put_authkey:
	FUNC11(authkey);
error_free_rka:
	FUNC5(rka);
error:
	FUNC12("= %d", ret);
	return FUNC0(ret);
}