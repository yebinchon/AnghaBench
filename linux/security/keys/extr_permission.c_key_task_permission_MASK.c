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
struct key {int perm; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct cred {int /*<<< orphan*/  group_info; int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  int key_perm_t ;

/* Variables and functions */
 int EACCES ; 
 int KEY_GRP_ALL ; 
 int KEY_NEED_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 struct key* FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (int /*<<< orphan*/  const,struct cred const*,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(const key_ref_t key_ref, const struct cred *cred,
			unsigned perm)
{
	struct key *key;
	key_perm_t kperm;
	int ret;

	key = FUNC4(key_ref);

	/* use the second 8-bits of permissions for keys the caller owns */
	if (FUNC6(key->uid, cred->fsuid)) {
		kperm = key->perm >> 16;
		goto use_these_perms;
	}

	/* use the third 8-bits of permissions for keys the caller has a group
	 * membership in common with */
	if (FUNC1(key->gid) && key->perm & KEY_GRP_ALL) {
		if (FUNC0(key->gid, cred->fsgid)) {
			kperm = key->perm >> 8;
			goto use_these_perms;
		}

		ret = FUNC2(cred->group_info, key->gid);
		if (ret) {
			kperm = key->perm >> 8;
			goto use_these_perms;
		}
	}

	/* otherwise use the least-significant 8-bits */
	kperm = key->perm;

use_these_perms:

	/* use the top 8-bits of permissions for keys the caller possesses
	 * - possessor permissions are additive with other permissions
	 */
	if (FUNC3(key_ref))
		kperm |= key->perm >> 24;

	kperm = kperm & perm & KEY_NEED_ALL;

	if (kperm != perm)
		return -EACCES;

	/* let LSM be the final arbiter */
	return FUNC5(key_ref, cred, perm);
}