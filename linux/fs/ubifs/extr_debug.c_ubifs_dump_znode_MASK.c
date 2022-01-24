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
struct ubifs_znode {size_t iip; int child_cnt; int /*<<< orphan*/  level; struct ubifs_zbranch* zbranch; int /*<<< orphan*/  flags; TYPE_1__* parent; } ;
struct ubifs_zbranch {int /*<<< orphan*/  key; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  znode; } ;
struct ubifs_info {int fanout; struct ubifs_zbranch zroot; } ;
struct TYPE_2__ {struct ubifs_zbranch* zbranch; } ;

/* Variables and functions */
 int DBG_KEY_BUF_LEN ; 
 int /*<<< orphan*/  dbg_lock ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(const struct ubifs_info *c,
		      const struct ubifs_znode *znode)
{
	int n;
	const struct ubifs_zbranch *zbr;
	char key_buf[DBG_KEY_BUF_LEN];

	FUNC2(&dbg_lock);
	if (znode->parent)
		zbr = &znode->parent->zbranch[znode->iip];
	else
		zbr = &c->zroot;

	FUNC1("znode %p, LEB %d:%d len %d parent %p iip %d level %d child_cnt %d flags %lx\n",
	       znode, zbr->lnum, zbr->offs, zbr->len, znode->parent, znode->iip,
	       znode->level, znode->child_cnt, znode->flags);

	if (znode->child_cnt <= 0 || znode->child_cnt > c->fanout) {
		FUNC3(&dbg_lock);
		return;
	}

	FUNC1("zbranches:\n");
	for (n = 0; n < znode->child_cnt; n++) {
		zbr = &znode->zbranch[n];
		if (znode->level > 0)
			FUNC1("\t%d: znode %p LEB %d:%d len %d key %s\n",
			       n, zbr->znode, zbr->lnum, zbr->offs, zbr->len,
			       FUNC0(c, &zbr->key, key_buf,
						DBG_KEY_BUF_LEN));
		else
			FUNC1("\t%d: LNC %p LEB %d:%d len %d key %s\n",
			       n, zbr->znode, zbr->lnum, zbr->offs, zbr->len,
			       FUNC0(c, &zbr->key, key_buf,
						DBG_KEY_BUF_LEN));
	}
	FUNC3(&dbg_lock);
}