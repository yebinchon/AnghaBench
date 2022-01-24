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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; TYPE_1__* zbranch; scalar_t__ cnext; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  lnum; union ubifs_key key; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ubifs_key*,char*) ; 
 struct ubifs_znode* FUNC4 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,union ubifs_key*,union ubifs_key*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_znode*,int) ; 
 int FUNC10 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC11 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,struct ubifs_znode*) ; 
 int FUNC13 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_znode*) ; 

int FUNC15(struct ubifs_info *c, union ubifs_key *from_key,
			   union ubifs_key *to_key)
{
	int i, n, k, err = 0;
	struct ubifs_znode *znode;
	union ubifs_key *key;

	FUNC7(&c->tnc_mutex);
	while (1) {
		/* Find first level 0 znode that contains keys to remove */
		err = FUNC13(c, from_key, &znode, &n);
		if (err < 0)
			goto out_unlock;

		if (err)
			key = from_key;
		else {
			err = FUNC10(c, &znode, &n);
			if (err == -ENOENT) {
				err = 0;
				goto out_unlock;
			}
			if (err < 0)
				goto out_unlock;
			key = &znode->zbranch[n].key;
			if (!FUNC5(c, key, from_key, to_key)) {
				err = 0;
				goto out_unlock;
			}
		}

		/* Ensure the znode is dirtied */
		if (znode->cnext || !FUNC14(znode)) {
			znode = FUNC4(c, znode);
			if (FUNC0(znode)) {
				err = FUNC1(znode);
				goto out_unlock;
			}
		}

		/* Remove all keys in range except the first */
		for (i = n + 1, k = 0; i < znode->child_cnt; i++, k++) {
			key = &znode->zbranch[i].key;
			if (!FUNC5(c, key, from_key, to_key))
				break;
			FUNC6(&znode->zbranch[i]);
			err = FUNC11(c, znode->zbranch[i].lnum,
					     znode->zbranch[i].len);
			if (err) {
				FUNC12(c, znode);
				goto out_unlock;
			}
			FUNC3(key, "removing key ");
		}
		if (k) {
			for (i = n + 1 + k; i < znode->child_cnt; i++)
				znode->zbranch[i - k] = znode->zbranch[i];
			znode->child_cnt -= k;
		}

		/* Now delete the first */
		err = FUNC9(c, znode, n);
		if (err)
			goto out_unlock;
	}

out_unlock:
	if (!err)
		err = FUNC2(c, 0);
	FUNC8(&c->tnc_mutex);
	return err;
}