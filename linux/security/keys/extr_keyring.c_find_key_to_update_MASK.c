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
struct keyring_index_key {int /*<<< orphan*/  description; TYPE_1__* type; } ;
struct key {int flags; int /*<<< orphan*/  serial; int /*<<< orphan*/  keys; } ;
typedef  int /*<<< orphan*/ * key_ref_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int KEY_FLAG_INVALIDATED ; 
 int KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  FUNC0 (struct key*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct keyring_index_key const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyring_assoc_array_ops ; 
 struct key* FUNC5 (void const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (struct key*,int /*<<< orphan*/ ) ; 

key_ref_t FUNC8(key_ref_t keyring_ref,
			     const struct keyring_index_key *index_key)
{
	struct key *keyring, *key;
	const void *object;

	keyring = FUNC4(keyring_ref);

	FUNC3("{%d},{%s,%s}",
	       keyring->serial, index_key->type->name, index_key->description);

	object = FUNC1(&keyring->keys, &keyring_assoc_array_ops,
				  index_key);

	if (object)
		goto found;

	FUNC6(" = NULL");
	return NULL;

found:
	key = FUNC5(object);
	if (key->flags & ((1 << KEY_FLAG_INVALIDATED) |
			  (1 << KEY_FLAG_REVOKED))) {
		FUNC6(" = NULL [x]");
		return NULL;
	}
	FUNC0(key);
	FUNC6(" = {%d}", key->serial);
	return FUNC7(key, FUNC2(keyring_ref));
}