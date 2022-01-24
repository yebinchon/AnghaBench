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
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {union ubifs_key key; int /*<<< orphan*/  len; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; scalar_t__ replaying; } ;
struct ubifs_dent_node {int dummy; } ;
struct fscrypt_name {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct ubifs_dent_node* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct ubifs_znode*,int) ; 
 int /*<<< orphan*/  FUNC2 (union ubifs_key*,char*) ; 
 int FUNC3 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*,struct fscrypt_name const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct fscrypt_name const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,union ubifs_key*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,union ubifs_key*) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*,struct fscrypt_name const*) ; 
 int FUNC13 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC14 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_dent_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 scalar_t__ FUNC17 (int) ; 

struct ubifs_dent_node *FUNC18(struct ubifs_info *c,
					   union ubifs_key *key,
					   const struct fscrypt_name *nm)
{
	int n, err, type = FUNC7(c, key);
	struct ubifs_znode *znode;
	struct ubifs_dent_node *dent;
	struct ubifs_zbranch *zbr;
	union ubifs_key *dkey;

	FUNC2(key, "key ");
	FUNC15(c, FUNC5(c, key));

	FUNC10(&c->tnc_mutex);
	err = FUNC16(c, key, &znode, &n);
	if (FUNC17(err < 0))
		goto out_unlock;

	if (FUNC4(nm) > 0) {
		if (err) {
			/* Handle collisions */
			if (c->replaying)
				err = FUNC3(c, key, &znode, &n,
							 nm, 0);
			else
				err = FUNC12(c, key, &znode, &n, nm);
			FUNC1("rc returned %d, znode %p, n %d",
				err, znode, n);
			if (FUNC17(err < 0))
				goto out_unlock;
		}

		/* Now find next entry */
		err = FUNC13(c, &znode, &n);
		if (FUNC17(err))
			goto out_unlock;
	} else {
		/*
		 * The full name of the entry was not given, in which case the
		 * behavior of this function is a little different and it
		 * returns current entry, not the next one.
		 */
		if (!err) {
			/*
			 * However, the given key does not exist in the TNC
			 * tree and @znode/@n variables contain the closest
			 * "preceding" element. Switch to the next one.
			 */
			err = FUNC13(c, &znode, &n);
			if (err)
				goto out_unlock;
		}
	}

	zbr = &znode->zbranch[n];
	dent = FUNC9(zbr->len, GFP_NOFS);
	if (FUNC17(!dent)) {
		err = -ENOMEM;
		goto out_unlock;
	}

	/*
	 * The above 'tnc_next()' call could lead us to the next inode, check
	 * this.
	 */
	dkey = &zbr->key;
	if (FUNC6(c, dkey) != FUNC6(c, key) ||
	    FUNC7(c, dkey) != type) {
		err = -ENOENT;
		goto out_free;
	}

	err = FUNC14(c, zbr, dent);
	if (FUNC17(err))
		goto out_free;

	FUNC11(&c->tnc_mutex);
	return dent;

out_free:
	FUNC8(dent);
out_unlock:
	FUNC11(&c->tnc_mutex);
	return FUNC0(err);
}