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
struct request_key_auth {struct cred const* cred; } ;
struct TYPE_4__ {int /*<<< orphan*/ * type; } ;
struct keyring_search_context {struct cred const* cred; TYPE_1__ index_key; } ;
typedef  struct cred {TYPE_3__* request_key_auth; } const cred ;
typedef  scalar_t__ key_ref_t ;
struct TYPE_5__ {struct request_key_auth** data; } ;
struct TYPE_6__ {TYPE_2__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct cred const* FUNC2 () ; 
 int /*<<< orphan*/  key_type_request_key_auth ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (struct keyring_search_context*) ; 

key_ref_t FUNC5(struct keyring_search_context *ctx)
{
	struct request_key_auth *rka;
	key_ref_t key_ref, ret = FUNC0(-EACCES), err;

	key_ref = FUNC4(ctx);
	if (!FUNC1(key_ref))
		goto found;
	err = key_ref;

	/* if this process has an instantiation authorisation key, then we also
	 * search the keyrings of the process mentioned there
	 * - we don't permit access to request_key auth keys via this method
	 */
	if (ctx->cred->request_key_auth &&
	    ctx->cred == FUNC2() &&
	    ctx->index_key.type != &key_type_request_key_auth
	    ) {
		const struct cred *cred = ctx->cred;

		if (FUNC3(cred->request_key_auth) == 0) {
			rka = ctx->cred->request_key_auth->payload.data[0];

			//// was search_process_keyrings() [ie. recursive]
			ctx->cred = rka->cred;
			key_ref = FUNC4(ctx);
			ctx->cred = cred;

			if (!FUNC1(key_ref))
				goto found;
			ret = key_ref;
		}
	}

	/* no key - decide on the error we're going to go for */
	if (err == FUNC0(-ENOKEY) || ret == FUNC0(-ENOKEY))
		key_ref = FUNC0(-ENOKEY);
	else if (err == FUNC0(-EACCES))
		key_ref = ret;
	else
		key_ref = err;

found:
	return key_ref;
}