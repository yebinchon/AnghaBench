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
struct key {scalar_t__ state; unsigned int expiry; int /*<<< orphan*/  flags; int /*<<< orphan*/  index_key; TYPE_1__* user; scalar_t__ restrict_link; } ;
struct assoc_array_edit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nikeys; } ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 scalar_t__ KEY_IS_UNINSTANTIATED ; 
 int /*<<< orphan*/  FUNC0 (struct key*,struct assoc_array_edit**) ; 
 int FUNC1 (struct key*,int /*<<< orphan*/ *,struct assoc_array_edit**) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int /*<<< orphan*/ *,struct assoc_array_edit*) ; 
 int FUNC3 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  key_construction_mutex ; 
 unsigned int key_gc_delay ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct key*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(struct key *key,
			unsigned timeout,
			unsigned error,
			struct key *keyring,
			struct key *authkey)
{
	struct assoc_array_edit *edit = NULL;
	int ret, awaken, link_ret = 0;

	FUNC5(key);
	FUNC5(keyring);

	awaken = 0;
	ret = -EBUSY;

	if (keyring) {
		if (keyring->restrict_link)
			return -EPERM;

		link_ret = FUNC3(keyring, &key->index_key);
		if (link_ret == 0) {
			link_ret = FUNC1(keyring, &key->index_key, &edit);
			if (link_ret < 0)
				FUNC2(keyring, &key->index_key, edit);
		}
	}

	FUNC10(&key_construction_mutex);

	/* can't instantiate twice */
	if (key->state == KEY_IS_UNINSTANTIATED) {
		/* mark the key as being negatively instantiated */
		FUNC4(&key->user->nikeys);
		FUNC9(key, -error);
		key->expiry = FUNC8() + timeout;
		FUNC7(key->expiry + key_gc_delay);

		if (FUNC12(KEY_FLAG_USER_CONSTRUCT, &key->flags))
			awaken = 1;

		ret = 0;

		/* and link it into the destination keyring */
		if (keyring && link_ret == 0)
			FUNC0(key, &edit);

		/* disable the authorisation key */
		if (authkey)
			FUNC6(authkey);
	}

	FUNC11(&key_construction_mutex);

	if (keyring && link_ret == 0)
		FUNC2(keyring, &key->index_key, edit);

	/* wake up anyone waiting for a key to be constructed */
	if (awaken)
		FUNC13(&key->flags, KEY_FLAG_USER_CONSTRUCT);

	return ret == 0 ? link_ret : ret;
}