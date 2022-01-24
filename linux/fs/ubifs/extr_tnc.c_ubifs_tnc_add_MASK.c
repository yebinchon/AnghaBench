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
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int lnum; int offs; int len; int /*<<< orphan*/  hash; int /*<<< orphan*/  key; int /*<<< orphan*/ * znode; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ubifs_key const*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_zbranch*) ; 
 int FUNC4 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ubifs_info*,struct ubifs_znode*,struct ubifs_zbranch*,int) ; 
 int FUNC8 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC10(struct ubifs_info *c, const union ubifs_key *key, int lnum,
		  int offs, int len, const u8 *hash)
{
	int found, n, err = 0;
	struct ubifs_znode *znode;

	FUNC5(&c->tnc_mutex);
	FUNC1(key, "%d:%d, len %d, key ", lnum, offs, len);
	found = FUNC4(c, key, &znode, &n);
	if (!found) {
		struct ubifs_zbranch zbr;

		zbr.znode = NULL;
		zbr.lnum = lnum;
		zbr.offs = offs;
		zbr.len = len;
		FUNC9(c, hash, zbr.hash);
		FUNC2(c, key, &zbr.key);
		err = FUNC7(c, znode, &zbr, n + 1);
	} else if (found == 1) {
		struct ubifs_zbranch *zbr = &znode->zbranch[n];

		FUNC3(zbr);
		err = FUNC8(c, zbr->lnum, zbr->len);
		zbr->lnum = lnum;
		zbr->offs = offs;
		zbr->len = len;
		FUNC9(c, hash, zbr->hash);
	} else
		err = found;
	if (!err)
		err = FUNC0(c, 0);
	FUNC6(&c->tnc_mutex);

	return err;
}