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
struct key {int perm; int /*<<< orphan*/  sem; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  int key_perm_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EACCES ; 
 long EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KEY_GRP_ALL ; 
 int KEY_LOOKUP_CREATE ; 
 int KEY_LOOKUP_PARTIAL ; 
 int /*<<< orphan*/  KEY_NEED_SETATTR ; 
 int KEY_OTH_ALL ; 
 int KEY_POS_ALL ; 
 int KEY_USR_ALL ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

long FUNC10(key_serial_t id, key_perm_t perm)
{
	struct key *key;
	key_ref_t key_ref;
	long ret;

	ret = -EINVAL;
	if (perm & ~(KEY_POS_ALL | KEY_USR_ALL | KEY_GRP_ALL | KEY_OTH_ALL))
		goto error;

	key_ref = FUNC7(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
				  KEY_NEED_SETATTR);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		goto error;
	}

	key = FUNC6(key_ref);

	/* make the changes with the locks held to prevent chown/chmod races */
	ret = -EACCES;
	FUNC4(&key->sem);

	/* if we're not the sysadmin, we can only change a key that we own */
	if (FUNC2(CAP_SYS_ADMIN) || FUNC8(key->uid, FUNC3())) {
		key->perm = perm;
		ret = 0;
	}

	FUNC9(&key->sem);
	FUNC5(key);
error:
	return ret;
}