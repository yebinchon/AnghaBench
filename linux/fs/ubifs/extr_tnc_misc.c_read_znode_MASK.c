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
struct ubifs_znode {int child_cnt; struct ubifs_zbranch* zbranch; void* level; } ;
struct ubifs_zbranch {int lnum; int offs; int len; union ubifs_key key; int /*<<< orphan*/ * znode; int /*<<< orphan*/  hash; } ;
struct ubifs_info {int fanout; scalar_t__ main_first; scalar_t__ leb_cnt; scalar_t__ leb_size; TYPE_1__* ranges; int /*<<< orphan*/  max_idx_node_sz; } ;
struct ubifs_idx_node {int /*<<< orphan*/  level; int /*<<< orphan*/  child_cnt; } ;
struct ubifs_branch {int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {scalar_t__ max_len; scalar_t__ len; scalar_t__ min_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
#define  UBIFS_DATA_KEY 131 
#define  UBIFS_DENT_KEY 130 
 int /*<<< orphan*/  UBIFS_IDX_NODE ; 
#define  UBIFS_INO_KEY 129 
 void* UBIFS_MAX_LEVELS ; 
#define  UBIFS_XENT_KEY 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int FUNC3 (struct ubifs_info*,union ubifs_key*) ; 
 int FUNC4 (struct ubifs_info*,union ubifs_key const*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_idx_node*) ; 
 struct ubifs_idx_node* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,struct ubifs_idx_node*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,struct ubifs_branch*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,struct ubifs_idx_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,char*,int,...) ; 
 struct ubifs_branch* FUNC14 (struct ubifs_info*,struct ubifs_idx_node*,int) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_idx_node*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ubifs_info*,struct ubifs_idx_node*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC17(struct ubifs_info *c, struct ubifs_zbranch *zzbr,
		      struct ubifs_znode *znode)
{
	int lnum = zzbr->lnum;
	int offs = zzbr->offs;
	int len = zzbr->len;
	int i, err, type, cmp;
	struct ubifs_idx_node *idx;

	idx = FUNC6(c->max_idx_node_sz, GFP_NOFS);
	if (!idx)
		return -ENOMEM;

	err = FUNC16(c, idx, UBIFS_IDX_NODE, len, lnum, offs);
	if (err < 0) {
		FUNC5(idx);
		return err;
	}

	err = FUNC15(c, idx, zzbr->hash);
	if (err) {
		FUNC9(c, idx, zzbr->hash, lnum, offs);
		FUNC5(idx);
		return err;
	}

	znode->child_cnt = FUNC7(idx->child_cnt);
	znode->level = FUNC7(idx->level);

	FUNC0("LEB %d:%d, level %d, %d branch",
		lnum, offs, znode->level, znode->child_cnt);

	if (znode->child_cnt > c->fanout || znode->level > UBIFS_MAX_LEVELS) {
		FUNC13(c, "current fanout %d, branch count %d",
			  c->fanout, znode->child_cnt);
		FUNC13(c, "max levels %d, znode level %d",
			  UBIFS_MAX_LEVELS, znode->level);
		err = 1;
		goto out_dump;
	}

	for (i = 0; i < znode->child_cnt; i++) {
		struct ubifs_branch *br = FUNC14(c, idx, i);
		struct ubifs_zbranch *zbr = &znode->zbranch[i];

		FUNC2(c, &br->key, &zbr->key);
		zbr->lnum = FUNC8(br->lnum);
		zbr->offs = FUNC8(br->offs);
		zbr->len  = FUNC8(br->len);
		FUNC11(c, FUNC10(c, br), zbr->hash);
		zbr->znode = NULL;

		/* Validate branch */

		if (zbr->lnum < c->main_first ||
		    zbr->lnum >= c->leb_cnt || zbr->offs < 0 ||
		    zbr->offs + zbr->len > c->leb_size || zbr->offs & 7) {
			FUNC13(c, "bad branch %d", i);
			err = 2;
			goto out_dump;
		}

		switch (FUNC3(c, &zbr->key)) {
		case UBIFS_INO_KEY:
		case UBIFS_DATA_KEY:
		case UBIFS_DENT_KEY:
		case UBIFS_XENT_KEY:
			break;
		default:
			FUNC13(c, "bad key type at slot %d: %d",
				  i, FUNC3(c, &zbr->key));
			err = 3;
			goto out_dump;
		}

		if (znode->level)
			continue;

		type = FUNC3(c, &zbr->key);
		if (c->ranges[type].max_len == 0) {
			if (zbr->len != c->ranges[type].len) {
				FUNC13(c, "bad target node (type %d) length (%d)",
					  type, zbr->len);
				FUNC13(c, "have to be %d", c->ranges[type].len);
				err = 4;
				goto out_dump;
			}
		} else if (zbr->len < c->ranges[type].min_len ||
			   zbr->len > c->ranges[type].max_len) {
			FUNC13(c, "bad target node (type %d) length (%d)",
				  type, zbr->len);
			FUNC13(c, "have to be in range of %d-%d",
				  c->ranges[type].min_len,
				  c->ranges[type].max_len);
			err = 5;
			goto out_dump;
		}
	}

	/*
	 * Ensure that the next key is greater or equivalent to the
	 * previous one.
	 */
	for (i = 0; i < znode->child_cnt - 1; i++) {
		const union ubifs_key *key1, *key2;

		key1 = &znode->zbranch[i].key;
		key2 = &znode->zbranch[i + 1].key;

		cmp = FUNC4(c, key1, key2);
		if (cmp > 0) {
			FUNC13(c, "bad key order (keys %d and %d)", i, i + 1);
			err = 6;
			goto out_dump;
		} else if (cmp == 0 && !FUNC1(c, key1)) {
			/* These can only be keys with colliding hash */
			FUNC13(c, "keys %d and %d are not hashed but equivalent",
				  i, i + 1);
			err = 7;
			goto out_dump;
		}
	}

	FUNC5(idx);
	return 0;

out_dump:
	FUNC13(c, "bad indexing node at LEB %d:%d, error %d", lnum, offs, err);
	FUNC12(c, idx);
	FUNC5(idx);
	return -EINVAL;
}