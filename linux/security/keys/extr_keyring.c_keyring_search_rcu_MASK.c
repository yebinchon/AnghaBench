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
struct keyring_search_context {int flags; int /*<<< orphan*/  result; int /*<<< orphan*/  now; int /*<<< orphan*/  cred; int /*<<< orphan*/  possessed; int /*<<< orphan*/  iterator; } ;
struct key {int /*<<< orphan*/ * type; } ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 long EAGAIN ; 
 long ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int KEYRING_SEARCH_NO_CHECK_PERM ; 
 int /*<<< orphan*/  KEY_NEED_SEARCH ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 struct key* FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 int /*<<< orphan*/  keyring_search_iterator ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct key*,struct keyring_search_context*) ; 

key_ref_t FUNC8(key_ref_t keyring_ref,
			     struct keyring_search_context *ctx)
{
	struct key *keyring;
	long err;

	ctx->iterator = keyring_search_iterator;
	ctx->possessed = FUNC2(keyring_ref);
	ctx->result = FUNC0(-EAGAIN);

	keyring = FUNC4(keyring_ref);
	FUNC3(keyring);

	if (keyring->type != &key_type_keyring)
		return FUNC0(-ENOTDIR);

	if (!(ctx->flags & KEYRING_SEARCH_NO_CHECK_PERM)) {
		err = FUNC5(keyring_ref, ctx->cred, KEY_NEED_SEARCH);
		if (err < 0)
			return FUNC0(err);
	}

	ctx->now = FUNC6();
	if (FUNC7(keyring, ctx))
		FUNC1(FUNC4(ctx->result));
	return ctx->result;
}