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
struct ubifs_zbranch {scalar_t__ len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  key; } ;
struct ubifs_info {scalar_t__ max_sqnum; } ;
struct ubifs_dent_node {scalar_t__ type; int /*<<< orphan*/  nlen; int /*<<< orphan*/  key; int /*<<< orphan*/  inum; } ;
struct ubifs_data_node {int /*<<< orphan*/  size; int /*<<< orphan*/  key; } ;
struct ubifs_ch {int /*<<< orphan*/  sqnum; } ;
struct fsck_inode {long long size; int references; int calc_xcnt; int calc_xnms; int calc_cnt; int /*<<< orphan*/  calc_sz; int /*<<< orphan*/  calc_xsz; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (long long) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct fsck_inode*) ; 
 int FUNC3 (struct fsck_inode*) ; 
 long long UBIFS_BLOCK_SHIFT ; 
 scalar_t__ UBIFS_CH_SZ ; 
 int UBIFS_DATA_KEY ; 
 scalar_t__ UBIFS_DATA_NODE_SZ ; 
 int UBIFS_DENT_KEY ; 
 scalar_t__ UBIFS_DENT_NODE_SZ ; 
 int UBIFS_INO_KEY ; 
 scalar_t__ UBIFS_ITYPE_DIR ; 
 int UBIFS_XENT_KEY ; 
 struct fsck_inode* FUNC4 (struct ubifs_info*,void*,void*) ; 
 long long FUNC5 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct fsck_inode* FUNC13 (struct ubifs_info*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 
 int FUNC19 (struct ubifs_info*,struct ubifs_dent_node*) ; 

__attribute__((used)) static int FUNC20(struct ubifs_info *c, struct ubifs_zbranch *zbr,
		      void *priv)
{
	ino_t inum;
	void *node;
	struct ubifs_ch *ch;
	int err, type = FUNC7(c, &zbr->key);
	struct fsck_inode *fscki;

	if (zbr->len < UBIFS_CH_SZ) {
		FUNC16(c, "bad leaf length %d (LEB %d:%d)",
			  zbr->len, zbr->lnum, zbr->offs);
		return -EINVAL;
	}

	node = FUNC9(zbr->len, GFP_NOFS);
	if (!node)
		return -ENOMEM;

	err = FUNC18(c, zbr, node);
	if (err) {
		FUNC16(c, "cannot read leaf node at LEB %d:%d, error %d",
			  zbr->lnum, zbr->offs, err);
		goto out_free;
	}

	/* If this is an inode node, add it to RB-tree of inodes */
	if (type == UBIFS_INO_KEY) {
		fscki = FUNC4(c, priv, node);
		if (FUNC2(fscki)) {
			err = FUNC3(fscki);
			FUNC16(c, "error %d while adding inode node", err);
			goto out_dump;
		}
		goto out;
	}

	if (type != UBIFS_DENT_KEY && type != UBIFS_XENT_KEY &&
	    type != UBIFS_DATA_KEY) {
		FUNC16(c, "unexpected node type %d at LEB %d:%d",
			  type, zbr->lnum, zbr->offs);
		err = -EINVAL;
		goto out_free;
	}

	ch = node;
	if (FUNC12(ch->sqnum) > c->max_sqnum) {
		FUNC16(c, "too high sequence number, max. is %llu",
			  c->max_sqnum);
		err = -EINVAL;
		goto out_dump;
	}

	if (type == UBIFS_DATA_KEY) {
		long long blk_offs;
		struct ubifs_data_node *dn = node;

		FUNC14(c, zbr->len >= UBIFS_DATA_NODE_SZ);

		/*
		 * Search the inode node this data node belongs to and insert
		 * it to the RB-tree of inodes.
		 */
		inum = FUNC6(c, &dn->key);
		fscki = FUNC13(c, priv, inum);
		if (FUNC2(fscki)) {
			err = FUNC3(fscki);
			FUNC16(c, "error %d while processing data node and trying to find inode node %lu",
				  err, (unsigned long)inum);
			goto out_dump;
		}

		/* Make sure the data node is within inode size */
		blk_offs = FUNC5(c, &dn->key);
		blk_offs <<= UBIFS_BLOCK_SHIFT;
		blk_offs += FUNC11(dn->size);
		if (blk_offs > fscki->size) {
			FUNC16(c, "data node at LEB %d:%d is not within inode size %lld",
				  zbr->lnum, zbr->offs, fscki->size);
			err = -EINVAL;
			goto out_dump;
		}
	} else {
		int nlen;
		struct ubifs_dent_node *dent = node;
		struct fsck_inode *fscki1;

		FUNC14(c, zbr->len >= UBIFS_DENT_NODE_SZ);

		err = FUNC19(c, dent);
		if (err)
			goto out_dump;

		/*
		 * Search the inode node this entry refers to and the parent
		 * inode node and insert them to the RB-tree of inodes.
		 */
		inum = FUNC12(dent->inum);
		fscki = FUNC13(c, priv, inum);
		if (FUNC2(fscki)) {
			err = FUNC3(fscki);
			FUNC16(c, "error %d while processing entry node and trying to find inode node %lu",
				  err, (unsigned long)inum);
			goto out_dump;
		}

		/* Count how many direntries or xentries refers this inode */
		fscki->references += 1;

		inum = FUNC6(c, &dent->key);
		fscki1 = FUNC13(c, priv, inum);
		if (FUNC2(fscki1)) {
			err = FUNC3(fscki1);
			FUNC16(c, "error %d while processing entry node and trying to find parent inode node %lu",
				  err, (unsigned long)inum);
			goto out_dump;
		}

		nlen = FUNC10(dent->nlen);
		if (type == UBIFS_XENT_KEY) {
			fscki1->calc_xcnt += 1;
			fscki1->calc_xsz += FUNC0(nlen);
			fscki1->calc_xsz += FUNC1(fscki->size);
			fscki1->calc_xnms += nlen;
		} else {
			fscki1->calc_sz += FUNC0(nlen);
			if (dent->type == UBIFS_ITYPE_DIR)
				fscki1->calc_cnt += 1;
		}
	}

out:
	FUNC8(node);
	return 0;

out_dump:
	FUNC17(c, "dump of node at LEB %d:%d", zbr->lnum, zbr->offs);
	FUNC15(c, node);
out_free:
	FUNC8(node);
	return err;
}