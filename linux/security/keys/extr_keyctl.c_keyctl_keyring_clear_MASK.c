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
struct key {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_KEEP ; 
 int /*<<< orphan*/  KEY_FLAG_ROOT_CAN_CLEAR ; 
 int /*<<< orphan*/  KEY_LOOKUP_CREATE ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct key* FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC8(key_serial_t ringid)
{
	key_ref_t keyring_ref;
	struct key *keyring;
	long ret;

	keyring_ref = FUNC6(ringid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
	if (FUNC0(keyring_ref)) {
		ret = FUNC1(keyring_ref);

		/* Root is permitted to invalidate certain special keyrings */
		if (FUNC2(CAP_SYS_ADMIN)) {
			keyring_ref = FUNC6(ringid, 0, 0);
			if (FUNC0(keyring_ref))
				goto error;
			if (FUNC7(KEY_FLAG_ROOT_CAN_CLEAR,
				     &FUNC4(keyring_ref)->flags))
				goto clear;
			goto error_put;
		}

		goto error;
	}

clear:
	keyring = FUNC4(keyring_ref);
	if (FUNC7(KEY_FLAG_KEEP, &keyring->flags))
		ret = -EPERM;
	else
		ret = FUNC5(keyring);
error_put:
	FUNC3(keyring_ref);
error:
	return ret;
}