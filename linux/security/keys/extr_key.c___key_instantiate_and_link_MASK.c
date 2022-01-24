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
struct key_preparsed_payload {scalar_t__ expiry; } ;
struct key {scalar_t__ state; scalar_t__ expiry; int /*<<< orphan*/  flags; TYPE_2__* user; TYPE_1__* type; } ;
struct assoc_array_edit {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nikeys; } ;
struct TYPE_3__ {int (* instantiate ) (struct key*,struct key_preparsed_payload*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  KEY_FLAG_KEEP ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 scalar_t__ KEY_IS_UNINSTANTIATED ; 
 scalar_t__ TIME64_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct key*,struct assoc_array_edit**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  key_construction_mutex ; 
 scalar_t__ key_gc_delay ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct key*,struct key_preparsed_payload*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct key *key,
				      struct key_preparsed_payload *prep,
				      struct key *keyring,
				      struct key *authkey,
				      struct assoc_array_edit **_edit)
{
	int ret, awaken;

	FUNC2(key);
	FUNC2(keyring);

	awaken = 0;
	ret = -EBUSY;

	FUNC6(&key_construction_mutex);

	/* can't instantiate twice */
	if (key->state == KEY_IS_UNINSTANTIATED) {
		/* instantiate the key */
		ret = key->type->instantiate(key, prep);

		if (ret == 0) {
			/* mark the key as being instantiated */
			FUNC1(&key->user->nikeys);
			FUNC5(key, 0);

			if (FUNC10(KEY_FLAG_USER_CONSTRUCT, &key->flags))
				awaken = 1;

			/* and link it into the destination keyring */
			if (keyring) {
				if (FUNC11(KEY_FLAG_KEEP, &keyring->flags))
					FUNC8(KEY_FLAG_KEEP, &key->flags);

				FUNC0(key, _edit);
			}

			/* disable the authorisation key */
			if (authkey)
				FUNC3(authkey);

			if (prep->expiry != TIME64_MAX) {
				key->expiry = prep->expiry;
				FUNC4(prep->expiry + key_gc_delay);
			}
		}
	}

	FUNC7(&key_construction_mutex);

	/* wake up anyone waiting for a key to be constructed */
	if (awaken)
		FUNC12(&key->flags, KEY_FLAG_USER_CONSTRUCT);

	return ret;
}