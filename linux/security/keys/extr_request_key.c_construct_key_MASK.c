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
struct key {int /*<<< orphan*/  flags; TYPE_1__* type; int /*<<< orphan*/  serial; } ;
typedef  int (* request_key_actor_t ) (struct key*,void*) ;
struct TYPE_2__ {int (* request_key ) (struct key*,void*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_INVALIDATED ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct key*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void const*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct key* FUNC7 (struct key*,char*,void const*,size_t,struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct key *key, const void *callout_info,
			 size_t callout_len, void *aux,
			 struct key *dest_keyring)
{
	request_key_actor_t actor;
	struct key *authkey;
	int ret;

	FUNC4("%d,%p,%zu,%p", key->serial, callout_info, callout_len, aux);

	/* allocate an authorisation key */
	authkey = FUNC7(key, "create", callout_info, callout_len,
				       dest_keyring);
	if (FUNC0(authkey))
		return FUNC1(authkey);

	/* Make the call */
	actor = call_sbin_request_key;
	if (key->type->request_key)
		actor = key->type->request_key;

	ret = actor(authkey, aux);

	/* check that the actor called complete_request_key() prior to
	 * returning an error */
	FUNC2(ret < 0 &&
		!FUNC8(KEY_FLAG_INVALIDATED, &authkey->flags));

	FUNC5(authkey);
	FUNC6(" = %d", ret);
	return ret;
}