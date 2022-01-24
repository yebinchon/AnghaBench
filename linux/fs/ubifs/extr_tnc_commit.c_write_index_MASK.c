#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_znode {int child_cnt; int level; size_t ciip; size_t iip; int lnum; int offs; int len; int /*<<< orphan*/  flags; struct ubifs_znode* cnext; TYPE_6__* parent; TYPE_4__* cparent; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; int /*<<< orphan*/  len; int /*<<< orphan*/  lnum; int /*<<< orphan*/ * hash; int /*<<< orphan*/  offs; int /*<<< orphan*/  key; } ;
struct TYPE_14__ {int /*<<< orphan*/  hash; } ;
struct ubifs_info {int ihead_lnum; int ihead_offs; int max_idx_node_sz; int min_io_size; int leb_size; int* ilebs; TYPE_1__* dbg; struct ubifs_idx_node* cbuf; struct ubifs_znode* cnext; int /*<<< orphan*/  tnc_mutex; TYPE_7__ zroot; struct ubifs_znode* enext; } ;
struct TYPE_9__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_idx_node {void* level; void* child_cnt; TYPE_2__ ch; } ;
struct ubifs_branch {void* len; void* offs; void* lnum; int /*<<< orphan*/  key; } ;
struct TYPE_13__ {TYPE_5__* zbranch; } ;
struct TYPE_12__ {int /*<<< orphan*/  hash; } ;
struct TYPE_11__ {TYPE_3__* zbranch; } ;
struct TYPE_10__ {int /*<<< orphan*/  hash; } ;
struct TYPE_8__ {int new_ihead_lnum; int new_ihead_offs; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  COW_ZNODE ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  LPROPS_NC ; 
 int /*<<< orphan*/  LPROPS_TAKEN ; 
 int UBIFS_HASH_ARR_SZ ; 
 int /*<<< orphan*/  UBIFS_IDX_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_idx_node*,struct ubifs_idx_node*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,struct ubifs_branch*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,char*) ; 
 struct ubifs_branch* FUNC16 (struct ubifs_info*,struct ubifs_idx_node*,int) ; 
 int FUNC17 (struct ubifs_info*,int) ; 
 int FUNC18 (struct ubifs_info*,int,struct ubifs_idx_node*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,struct ubifs_idx_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ubifs_info*,struct ubifs_idx_node*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_info*,struct ubifs_idx_node*,int,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC24 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC25 (struct ubifs_znode*) ; 

__attribute__((used)) static int FUNC26(struct ubifs_info *c)
{
	struct ubifs_idx_node *idx;
	struct ubifs_znode *znode, *cnext;
	int i, lnum, offs, len, next_len, buf_len, buf_offs, used;
	int avail, wlen, err, lnum_pos = 0, blen, nxt_offs;

	cnext = c->enext;
	if (!cnext)
		return 0;

	/*
	 * Always write index nodes to the index head so that index nodes and
	 * other types of nodes are never mixed in the same erase block.
	 */
	lnum = c->ihead_lnum;
	buf_offs = c->ihead_offs;

	/* Allocate commit buffer */
	buf_len = FUNC0(c->max_idx_node_sz, c->min_io_size);
	used = 0;
	avail = buf_len;

	/* Ensure there is enough room for first write */
	next_len = FUNC17(c, cnext->child_cnt);
	if (buf_offs + next_len > c->leb_size) {
		err = FUNC22(c, lnum, LPROPS_NC, 0, 0,
					  LPROPS_TAKEN);
		if (err)
			return err;
		lnum = -1;
	}

	while (1) {
		u8 hash[UBIFS_HASH_ARR_SZ];

		FUNC2();

		znode = cnext;
		idx = c->cbuf + used;

		/* Make index node */
		idx->ch.node_type = UBIFS_IDX_NODE;
		idx->child_cnt = FUNC3(znode->child_cnt);
		idx->level = FUNC3(znode->level);
		for (i = 0; i < znode->child_cnt; i++) {
			struct ubifs_branch *br = FUNC16(c, idx, i);
			struct ubifs_zbranch *zbr = &znode->zbranch[i];

			FUNC5(c, &zbr->key, &br->key);
			br->lnum = FUNC4(zbr->lnum);
			br->offs = FUNC4(zbr->offs);
			br->len = FUNC4(zbr->len);
			FUNC13(c, zbr->hash, FUNC12(c, br));
			if (!zbr->lnum || !zbr->len) {
				FUNC15(c, "bad ref in znode");
				FUNC14(c, znode);
				if (zbr->znode)
					FUNC14(c, zbr->znode);

				return -EINVAL;
			}
		}
		len = FUNC17(c, znode->child_cnt);
		FUNC21(c, idx, len, 0);
		FUNC19(c, idx, hash);

		FUNC7(&c->tnc_mutex);

		if (znode->cparent)
			FUNC13(c, hash,
					znode->cparent->zbranch[znode->ciip].hash);

		if (znode->parent) {
			if (!FUNC25(znode))
				FUNC13(c, hash,
					znode->parent->zbranch[znode->iip].hash);
		} else {
			FUNC13(c, hash, c->zroot.hash);
		}

		FUNC8(&c->tnc_mutex);

		/* Determine the index node position */
		if (lnum == -1) {
			lnum = c->ilebs[lnum_pos++];
			buf_offs = 0;
			used = 0;
			avail = buf_len;
		}
		offs = buf_offs + used;

		if (lnum != znode->lnum || offs != znode->offs ||
		    len != znode->len) {
			FUNC15(c, "inconsistent znode posn");
			return -EINVAL;
		}

		/* Grab some stuff from znode while we still can */
		cnext = znode->cnext;

		FUNC11(c, FUNC24(znode));
		FUNC11(c, FUNC23(znode));

		/*
		 * It is important that other threads should see %DIRTY_ZNODE
		 * flag cleared before %COW_ZNODE. Specifically, it matters in
		 * the 'dirty_cow_znode()' function. This is the reason for the
		 * first barrier. Also, we want the bit changes to be seen to
		 * other threads ASAP, to avoid unnecesarry copying, which is
		 * the reason for the second barrier.
		 */
		FUNC1(DIRTY_ZNODE, &znode->flags);
		FUNC10();
		FUNC1(COW_ZNODE, &znode->flags);
		FUNC9();

		/*
		 * We have marked the znode as clean but have not updated the
		 * @c->clean_zn_cnt counter. If this znode becomes dirty again
		 * before 'free_obsolete_znodes()' is called, then
		 * @c->clean_zn_cnt will be decremented before it gets
		 * incremented (resulting in 2 decrements for the same znode).
		 * This means that @c->clean_zn_cnt may become negative for a
		 * while.
		 *
		 * Q: why we cannot increment @c->clean_zn_cnt?
		 * A: because we do not have the @c->tnc_mutex locked, and the
		 *    following code would be racy and buggy:
		 *
		 *    if (!ubifs_zn_obsolete(znode)) {
		 *            atomic_long_inc(&c->clean_zn_cnt);
		 *            atomic_long_inc(&ubifs_clean_zn_cnt);
		 *    }
		 *
		 *    Thus, we just delay the @c->clean_zn_cnt update until we
		 *    have the mutex locked.
		 */

		/* Do not access znode from this point on */

		/* Update buffer positions */
		wlen = used + len;
		used += FUNC0(len, 8);
		avail -= FUNC0(len, 8);

		/*
		 * Calculate the next index node length to see if there is
		 * enough room for it
		 */
		if (cnext == c->cnext)
			next_len = 0;
		else
			next_len = FUNC17(c, cnext->child_cnt);

		nxt_offs = buf_offs + used + next_len;
		if (next_len && nxt_offs <= c->leb_size) {
			if (avail > 0)
				continue;
			else
				blen = buf_len;
		} else {
			wlen = FUNC0(wlen, 8);
			blen = FUNC0(wlen, c->min_io_size);
			FUNC20(c, c->cbuf + wlen, blen - wlen);
		}

		/* The buffer is full or there are no more znodes to do */
		err = FUNC18(c, lnum, c->cbuf, buf_offs, blen);
		if (err)
			return err;
		buf_offs += blen;
		if (next_len) {
			if (nxt_offs > c->leb_size) {
				err = FUNC22(c, lnum, LPROPS_NC, 0,
							  0, LPROPS_TAKEN);
				if (err)
					return err;
				lnum = -1;
			}
			used -= blen;
			if (used < 0)
				used = 0;
			avail = buf_len - used;
			FUNC6(c->cbuf, c->cbuf + blen, used);
			continue;
		}
		break;
	}

	if (lnum != c->dbg->new_ihead_lnum ||
	    buf_offs != c->dbg->new_ihead_offs) {
		FUNC15(c, "inconsistent ihead");
		return -EINVAL;
	}

	c->ihead_lnum = lnum;
	c->ihead_offs = buf_offs;

	return 0;
}