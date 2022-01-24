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
typedef  int /*<<< orphan*/  uid_t ;
struct user_namespace {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;
struct TYPE_2__ {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SETUID ; 
 long EINVAL ; 
 long ENOTDIR ; 
 long EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_LOOKUP_CREATE ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct user_namespace* FUNC4 () ; 
 long FUNC5 (struct user_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

long FUNC13(uid_t _uid, key_serial_t destid)
{
	struct user_namespace *ns = FUNC4();
	key_ref_t dest_ref;
	kuid_t uid;
	long ret;

	/* -1 indicates the current user */
	if (_uid == (uid_t)-1) {
		uid = FUNC3();
	} else {
		uid = FUNC9(ns, _uid);
		if (!FUNC12(uid))
			return -EINVAL;

		/* You can only see your own persistent cache if you're not
		 * sufficiently privileged.
		 */
		if (!FUNC11(uid, FUNC3()) &&
		    !FUNC11(uid, FUNC2()) &&
		    !FUNC10(ns, CAP_SETUID))
			return -EPERM;
	}

	/* There must be a destination keyring */
	dest_ref = FUNC8(destid, KEY_LOOKUP_CREATE, KEY_NEED_WRITE);
	if (FUNC0(dest_ref))
		return FUNC1(dest_ref);
	if (FUNC7(dest_ref)->type != &key_type_keyring) {
		ret = -ENOTDIR;
		goto out_put_dest;
	}

	ret = FUNC5(ns, uid, dest_ref);

out_put_dest:
	FUNC6(dest_ref);
	return ret;
}