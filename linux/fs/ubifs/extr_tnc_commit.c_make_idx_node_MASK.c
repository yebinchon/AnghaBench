#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_znode {int child_cnt; int level; int lnum; int offs; int len; size_t iip; int /*<<< orphan*/  flags; struct ubifs_zbranch* zbranch; struct ubifs_znode* parent; } ;
struct ubifs_zbranch {int lnum; int offs; int len; int /*<<< orphan*/ * hash; struct ubifs_znode* znode; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int lnum; int offs; int len; int /*<<< orphan*/ * hash; } ;
struct ubifs_info {int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  calc_idx_sz; TYPE_2__ zroot; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_idx_node {void* level; void* child_cnt; TYPE_1__ ch; } ;
struct ubifs_branch {void* len; void* offs; void* lnum; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  COW_ZNODE ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 int EINVAL ; 
 int UBIFS_HASH_ARR_SZ ; 
 int /*<<< orphan*/  UBIFS_IDX_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct ubifs_info*,struct ubifs_branch*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,char*) ; 
 struct ubifs_branch* FUNC12 (struct ubifs_info*,struct ubifs_idx_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,struct ubifs_idx_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,struct ubifs_idx_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_znode*) ; 

__attribute__((used)) static int FUNC17(struct ubifs_info *c, struct ubifs_idx_node *idx,
			 struct ubifs_znode *znode, int lnum, int offs, int len)
{
	struct ubifs_znode *zp;
	u8 hash[UBIFS_HASH_ARR_SZ];
	int i, err;

	/* Make index node */
	idx->ch.node_type = UBIFS_IDX_NODE;
	idx->child_cnt = FUNC3(znode->child_cnt);
	idx->level = FUNC3(znode->level);
	for (i = 0; i < znode->child_cnt; i++) {
		struct ubifs_branch *br = FUNC12(c, idx, i);
		struct ubifs_zbranch *zbr = &znode->zbranch[i];

		FUNC6(c, &zbr->key, &br->key);
		br->lnum = FUNC4(zbr->lnum);
		br->offs = FUNC4(zbr->offs);
		br->len = FUNC4(zbr->len);
		FUNC9(c, zbr->hash, FUNC8(c, br));
		if (!zbr->lnum || !zbr->len) {
			FUNC11(c, "bad ref in znode");
			FUNC10(c, znode);
			if (zbr->znode)
				FUNC10(c, zbr->znode);

			return -EINVAL;
		}
	}
	FUNC14(c, idx, len, 0);
	FUNC13(c, idx, hash);

	znode->lnum = lnum;
	znode->offs = offs;
	znode->len = len;

	err = FUNC5(c, znode);

	/* Update the parent */
	zp = znode->parent;
	if (zp) {
		struct ubifs_zbranch *zbr;

		zbr = &zp->zbranch[znode->iip];
		zbr->lnum = lnum;
		zbr->offs = offs;
		zbr->len = len;
		FUNC9(c, hash, zbr->hash);
	} else {
		c->zroot.lnum = lnum;
		c->zroot.offs = offs;
		c->zroot.len = len;
		FUNC9(c, hash, c->zroot.hash);
	}
	c->calc_idx_sz += FUNC0(len, 8);

	FUNC2(&c->dirty_zn_cnt);

	FUNC7(c, FUNC16(znode));
	FUNC7(c, FUNC15(znode));

	/*
	 * Note, unlike 'write_index()' we do not add memory barriers here
	 * because this function is called with @c->tnc_mutex locked.
	 */
	FUNC1(DIRTY_ZNODE, &znode->flags);
	FUNC1(COW_ZNODE, &znode->flags);

	return err;
}