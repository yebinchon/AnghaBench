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
struct ubifs_znode {struct ubifs_zbranch* zbranch; scalar_t__ cnext; } ;
struct ubifs_zbranch {int lnum; int offs; int len; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct ubifs_znode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (union ubifs_key const*,char*,int,int,int,int,int) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_zbranch*) ; 
 int FUNC8 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*,int,int) ; 
 int FUNC12 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_znode*) ; 

int FUNC14(struct ubifs_info *c, const union ubifs_key *key,
		      int old_lnum, int old_offs, int lnum, int offs, int len)
{
	int found, n, err = 0;
	struct ubifs_znode *znode;

	FUNC9(&c->tnc_mutex);
	FUNC4(key, "old LEB %d:%d, new LEB %d:%d, len %d, key ", old_lnum,
		 old_offs, lnum, offs, len);
	found = FUNC8(c, key, &znode, &n);
	if (found < 0) {
		err = found;
		goto out_unlock;
	}

	if (found == 1) {
		struct ubifs_zbranch *zbr = &znode->zbranch[n];

		found = 0;
		if (zbr->lnum == old_lnum && zbr->offs == old_offs) {
			FUNC7(zbr);
			err = FUNC12(c, zbr->lnum, zbr->len);
			if (err)
				goto out_unlock;
			zbr->lnum = lnum;
			zbr->offs = offs;
			zbr->len = len;
			found = 1;
		} else if (FUNC6(c, key)) {
			found = FUNC11(c, key, &znode, &n,
							   old_lnum, old_offs);
			FUNC3("rc returned %d, znode %p, n %d, LEB %d:%d",
				found, znode, n, old_lnum, old_offs);
			if (found < 0) {
				err = found;
				goto out_unlock;
			}

			if (found) {
				/* Ensure the znode is dirtied */
				if (znode->cnext || !FUNC13(znode)) {
					znode = FUNC5(c, znode);
					if (FUNC0(znode)) {
						err = FUNC1(znode);
						goto out_unlock;
					}
				}
				zbr = &znode->zbranch[n];
				FUNC7(zbr);
				err = FUNC12(c, zbr->lnum,
						     zbr->len);
				if (err)
					goto out_unlock;
				zbr->lnum = lnum;
				zbr->offs = offs;
				zbr->len = len;
			}
		}
	}

	if (!found)
		err = FUNC12(c, lnum, len);

	if (!err)
		err = FUNC2(c, 0);

out_unlock:
	FUNC10(&c->tnc_mutex);
	return err;
}