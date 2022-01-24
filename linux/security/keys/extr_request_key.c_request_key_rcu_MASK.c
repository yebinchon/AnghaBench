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
struct TYPE_3__ {char const* raw_data; int /*<<< orphan*/  lookup_type; int /*<<< orphan*/  cmp; } ;
struct TYPE_4__ {char const* description; int /*<<< orphan*/  desc_len; struct key_tag* domain_tag; struct key_type* type; } ;
struct keyring_search_context {int flags; TYPE_1__ match_data; int /*<<< orphan*/  cred; TYPE_2__ index_key; } ;
struct key_type {int /*<<< orphan*/  name; } ;
struct key_tag {int dummy; } ;
struct key {int dummy; } ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 struct key* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int KEYRING_SEARCH_DO_STATE_CHECK ; 
 int /*<<< orphan*/  KEYRING_SEARCH_LOOKUP_DIRECT ; 
 int KEYRING_SEARCH_SKIP_EXPIRED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct key* FUNC5 (struct keyring_search_context*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  key_default_cmp ; 
 struct key* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct key*) ; 
 int /*<<< orphan*/  FUNC10 (struct keyring_search_context*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

struct key *FUNC12(struct key_type *type,
			    const char *description,
			    struct key_tag *domain_tag)
{
	struct keyring_search_context ctx = {
		.index_key.type		= type,
		.index_key.domain_tag	= domain_tag,
		.index_key.description	= description,
		.index_key.desc_len	= FUNC11(description),
		.cred			= FUNC6(),
		.match_data.cmp		= key_default_cmp,
		.match_data.raw_data	= description,
		.match_data.lookup_type	= KEYRING_SEARCH_LOOKUP_DIRECT,
		.flags			= (KEYRING_SEARCH_DO_STATE_CHECK |
					   KEYRING_SEARCH_SKIP_EXPIRED),
	};
	struct key *key;
	key_ref_t key_ref;

	FUNC7("%s,%s", type->name, description);

	key = FUNC5(&ctx);
	if (key)
		return key;

	/* search all the process keyrings for a key */
	key_ref = FUNC10(&ctx);
	if (FUNC2(key_ref)) {
		key = FUNC0(key_ref);
		if (FUNC3(key_ref) == -EAGAIN)
			key = FUNC1(-ENOKEY);
	} else {
		key = FUNC8(key_ref);
		FUNC4(key);
	}

	FUNC9(" = %p", key);
	return key;
}