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
struct ceph_crypto_key {int dummy; } ;
struct ceph_auth_client {int negotiating; char const* name; struct ceph_crypto_key const* key; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 char const* CEPH_AUTH_NAME_DEFAULT ; 
 int ENOMEM ; 
 struct ceph_auth_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct ceph_auth_client* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct ceph_auth_client *FUNC4(const char *name, const struct ceph_crypto_key *key)
{
	struct ceph_auth_client *ac;
	int ret;

	FUNC1("auth_init name '%s'\n", name);

	ret = -ENOMEM;
	ac = FUNC2(sizeof(*ac), GFP_NOFS);
	if (!ac)
		goto out;

	FUNC3(&ac->mutex);
	ac->negotiating = true;
	if (name)
		ac->name = name;
	else
		ac->name = CEPH_AUTH_NAME_DEFAULT;
	FUNC1("auth_init name %s\n", ac->name);
	ac->key = key;
	return ac;

out:
	return FUNC0(ret);
}