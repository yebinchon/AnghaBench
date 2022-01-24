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
struct request_key_auth {int /*<<< orphan*/  dest_keyring; } ;
struct key {int dummy; } ;
typedef  scalar_t__ key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 long EINVAL ; 
 long ENOKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_LOOKUP_CREATE ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
 scalar_t__ KEY_SPEC_REQKEY_AUTH_KEY ; 
 scalar_t__ KEY_SPEC_REQUESTOR_KEYRING ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 struct key* FUNC2 (int /*<<< orphan*/ ) ; 
 struct key* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC5(key_serial_t ringid,
				      struct request_key_auth *rka,
				      struct key **_dest_keyring)
{
	key_ref_t dkref;

	*_dest_keyring = NULL;

	/* just return a NULL pointer if we weren't asked to make a link */
	if (ringid == 0)
		return 0;

	/* if a specific keyring is nominated by ID, then use that */
	if (ringid > 0) {
		dkref = FUNC4(ringid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
		if (FUNC0(dkref))
			return FUNC1(dkref);
		*_dest_keyring = FUNC3(dkref);
		return 0;
	}

	if (ringid == KEY_SPEC_REQKEY_AUTH_KEY)
		return -EINVAL;

	/* otherwise specify the destination keyring recorded in the
	 * authorisation key (any KEY_SPEC_*_KEYRING) */
	if (ringid >= KEY_SPEC_REQUESTOR_KEYRING) {
		*_dest_keyring = FUNC2(rka->dest_keyring);
		return 0;
	}

	return -ENOKEY;
}