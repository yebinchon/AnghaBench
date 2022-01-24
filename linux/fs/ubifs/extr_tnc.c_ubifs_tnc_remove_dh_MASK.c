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
typedef  union ubifs_key {int dummy; } ubifs_key ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ubifs_znode {scalar_t__ cnext; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int dummy; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; int /*<<< orphan*/  double_hash; } ;
struct ubifs_dent_node {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  UBIFS_MAX_DENT_NODE_SZ ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_znode* FUNC3 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ubifs_info*,union ubifs_key const*,struct ubifs_dent_node*,int /*<<< orphan*/ ,struct ubifs_znode**,int*,int) ; 
 int FUNC13 (struct ubifs_info*,struct ubifs_znode*,int) ; 
 int FUNC14 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_dent_node*) ; 
 int FUNC15 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_znode*) ; 
 scalar_t__ FUNC17 (int) ; 

int FUNC18(struct ubifs_info *c, const union ubifs_key *key,
			uint32_t cookie)
{
	int n, err;
	struct ubifs_znode *znode;
	struct ubifs_dent_node *dent;
	struct ubifs_zbranch *zbr;

	if (!c->double_hash)
		return -EOPNOTSUPP;

	FUNC10(&c->tnc_mutex);
	err = FUNC8(c, key, &znode, &n);
	if (err <= 0)
		goto out_unlock;

	zbr = &znode->zbranch[n];
	dent = FUNC6(UBIFS_MAX_DENT_NODE_SZ, GFP_NOFS);
	if (!dent) {
		err = -ENOMEM;
		goto out_unlock;
	}

	err = FUNC14(c, zbr, dent);
	if (err)
		goto out_free;

	/* If the cookie does not match, we're facing a hash collision. */
	if (FUNC7(dent->cookie) != cookie) {
		union ubifs_key start_key;

		FUNC9(c, &start_key, FUNC4(c, key));

		err = FUNC15(c, &start_key, &znode, &n);
		if (FUNC17(err < 0))
			goto out_free;

		err = FUNC12(c, key, dent, cookie, &znode, &n, err);
		if (err)
			goto out_free;
	}

	if (znode->cnext || !FUNC16(znode)) {
		znode = FUNC3(c, znode);
		if (FUNC0(znode)) {
			err = FUNC1(znode);
			goto out_free;
		}
	}
	err = FUNC13(c, znode, n);

out_free:
	FUNC5(dent);
out_unlock:
	if (!err)
		err = FUNC2(c, 0);
	FUNC11(&c->tnc_mutex);
	return err;
}