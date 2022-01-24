#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* description; int /*<<< orphan*/  desc_len; int /*<<< orphan*/ * type; } ;
struct TYPE_5__ {char* raw_data; int /*<<< orphan*/  lookup_type; int /*<<< orphan*/  cmp; } ;
struct keyring_search_context {TYPE_2__ index_key; int /*<<< orphan*/  flags; TYPE_1__ match_data; struct cred const* cred; } ;
struct key {int dummy; } ;
struct cred {TYPE_3__* user; TYPE_4__* user_ns; } ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  user_keyring_register; } ;
struct TYPE_7__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYRING_SEARCH_DO_STATE_CHECK ; 
 int /*<<< orphan*/  KEYRING_SEARCH_LOOKUP_DIRECT ; 
 struct key* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_default_cmp ; 
 struct key* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct keyring_search_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

struct key *FUNC7(const struct cred *cred)
{
	struct key *reg_keyring = FUNC1(cred->user_ns->user_keyring_register);
	key_ref_t session_keyring_r;
	char buf[20];

	struct keyring_search_context ctx = {
		.index_key.type		= &key_type_keyring,
		.index_key.description	= buf,
		.cred			= cred,
		.match_data.cmp		= key_default_cmp,
		.match_data.raw_data	= buf,
		.match_data.lookup_type	= KEYRING_SEARCH_LOOKUP_DIRECT,
		.flags			= KEYRING_SEARCH_DO_STATE_CHECK,
	};

	if (!reg_keyring)
		return NULL;

	ctx.index_key.desc_len = FUNC6(buf, sizeof(buf), "_uid_ses.%u",
					  FUNC2(cred->user_ns,
						    cred->user->uid));

	session_keyring_r = FUNC4(FUNC5(reg_keyring, true),
					       &ctx);
	if (FUNC0(session_keyring_r))
		return NULL;
	return FUNC3(session_keyring_r);
}