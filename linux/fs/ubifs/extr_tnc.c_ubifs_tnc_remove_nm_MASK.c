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
struct ubifs_znode {scalar_t__ cnext; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; scalar_t__ replaying; } ;
struct fscrypt_name {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct ubifs_znode*,int) ; 
 int /*<<< orphan*/  FUNC4 (union ubifs_key const*,char*) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int FUNC6 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct fscrypt_name const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,struct fscrypt_name const*) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_znode*) ; 

int FUNC13(struct ubifs_info *c, const union ubifs_key *key,
			const struct fscrypt_name *nm)
{
	int n, err;
	struct ubifs_znode *znode;

	FUNC8(&c->tnc_mutex);
	FUNC4(key, "key ");
	err = FUNC7(c, key, &znode, &n);
	if (err < 0)
		goto out_unlock;

	if (err) {
		if (c->replaying)
			err = FUNC6(c, key, &znode, &n,
							 nm, 0);
		else
			err = FUNC10(c, key, &znode, &n, nm);
		FUNC3("rc returned %d, znode %p, n %d", err, znode, n);
		if (err < 0)
			goto out_unlock;
		if (err) {
			/* Ensure the znode is dirtied */
			if (znode->cnext || !FUNC12(znode)) {
				znode = FUNC5(c, znode);
				if (FUNC0(znode)) {
					err = FUNC1(znode);
					goto out_unlock;
				}
			}
			err = FUNC11(c, znode, n);
		}
	}

out_unlock:
	if (!err)
		err = FUNC2(c, 0);
	FUNC9(&c->tnc_mutex);
	return err;
}