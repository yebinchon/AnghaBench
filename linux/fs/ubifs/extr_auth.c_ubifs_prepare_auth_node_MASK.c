#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {int /*<<< orphan*/  hash_tfm; } ;
struct TYPE_6__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_auth_node {TYPE_1__ ch; int /*<<< orphan*/  hmac; } ;
struct shash_desc {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBIFS_AUTH_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* hash_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,struct ubifs_auth_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,struct shash_desc*,TYPE_2__*) ; 

int FUNC9(struct ubifs_info *c, void *node,
			     struct shash_desc *inhash)
{
	struct ubifs_auth_node *auth = node;
	u8 *hash;
	int err;

	hash = FUNC4(FUNC1(c->hash_tfm), GFP_NOFS);
	if (!hash)
		return -ENOMEM;

	{
		FUNC0(hash_desc, c->hash_tfm);

		hash_desc->tfm = c->hash_tfm;
		FUNC8(c, inhash, hash_desc);

		err = FUNC2(hash_desc, hash);
		if (err)
			goto out;
	}

	err = FUNC6(c, hash, auth->hmac);
	if (err)
		goto out;

	auth->ch.node_type = UBIFS_AUTH_NODE;
	FUNC7(c, auth, FUNC5(c), 0);

	err = 0;
out:
	FUNC3(hash);

	return err;
}