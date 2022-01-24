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
struct TYPE_3__ {char* description; int /*<<< orphan*/  desc_len; int /*<<< orphan*/ * type; } ;
struct TYPE_4__ {char* raw_data; int /*<<< orphan*/  lookup_type; int /*<<< orphan*/  cmp; } ;
struct keyring_search_context {int flags; TYPE_1__ index_key; TYPE_2__ match_data; int /*<<< orphan*/  cred; } ;
struct key {int /*<<< orphan*/  flags; } ;
typedef  int key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EKEYREVOKED ; 
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 struct key* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int KEYRING_SEARCH_DO_STATE_CHECK ; 
 int /*<<< orphan*/  KEYRING_SEARCH_LOOKUP_DIRECT ; 
 int KEYRING_SEARCH_RECURSE ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  key_default_cmp ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_request_key_auth ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct keyring_search_context*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct key *FUNC11(key_serial_t target_id)
{
	char description[16];
	struct keyring_search_context ctx = {
		.index_key.type		= &key_type_request_key_auth,
		.index_key.description	= description,
		.cred			= FUNC3(),
		.match_data.cmp		= key_default_cmp,
		.match_data.raw_data	= description,
		.match_data.lookup_type	= KEYRING_SEARCH_LOOKUP_DIRECT,
		.flags			= (KEYRING_SEARCH_DO_STATE_CHECK |
					   KEYRING_SEARCH_RECURSE),
	};
	struct key *authkey;
	key_ref_t authkey_ref;

	ctx.index_key.desc_len = FUNC9(description, "%x", target_id);

	FUNC6();
	authkey_ref = FUNC8(&ctx);
	FUNC7();

	if (FUNC2(authkey_ref)) {
		authkey = FUNC0(authkey_ref);
		if (authkey == FUNC1(-EAGAIN))
			authkey = FUNC1(-ENOKEY);
		goto error;
	}

	authkey = FUNC5(authkey_ref);
	if (FUNC10(KEY_FLAG_REVOKED, &authkey->flags)) {
		FUNC4(authkey);
		authkey = FUNC1(-EKEYREVOKED);
	}

error:
	return authkey;
}