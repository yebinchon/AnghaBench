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
struct key_restriction {int dummy; } ;
struct key {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int /*<<< orphan*/  key_perm_t ;

/* Variables and functions */
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 struct key* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,unsigned long,struct key_restriction*) ; 
 int FUNC3 (struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  key_type_keyring ; 

struct key *FUNC5(const char *description, kuid_t uid, kgid_t gid,
			  const struct cred *cred, key_perm_t perm,
			  unsigned long flags,
			  struct key_restriction *restrict_link,
			  struct key *dest)
{
	struct key *keyring;
	int ret;

	keyring = FUNC2(&key_type_keyring, description,
			    uid, gid, cred, perm, flags, restrict_link);
	if (!FUNC1(keyring)) {
		ret = FUNC3(keyring, NULL, 0, dest, NULL);
		if (ret < 0) {
			FUNC4(keyring);
			keyring = FUNC0(ret);
		}
	}

	return keyring;
}