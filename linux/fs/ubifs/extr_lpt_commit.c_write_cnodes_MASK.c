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
struct ubifs_pnode {int dummy; } ;
struct ubifs_nnode {int dummy; } ;
struct ubifs_info {int nhead_lnum; int nhead_offs; int lsave_sz; int leb_size; int ltab_sz; int nnode_sz; int pnode_sz; int lpt_first; int lpt_last; int lpt_lnum; int lpt_offs; int ltab_lnum; int ltab_offs; int lsave_lnum; int lsave_offs; scalar_t__ big_lpt; int /*<<< orphan*/  min_io_size; int /*<<< orphan*/  ltab_cmt; int /*<<< orphan*/  lsave; struct ubifs_cnode* lpt_cnext; void* lpt_buf; } ;
struct ubifs_cnode {struct ubifs_cnode* cnext; int /*<<< orphan*/  flags; scalar_t__ level; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COW_CNODE ; 
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 
 int FUNC6 (struct ubifs_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,char*,int,int,int,int,int) ; 
 int FUNC13 (struct ubifs_info*,int) ; 
 int FUNC14 (struct ubifs_info*,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,void*,struct ubifs_nnode*) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,void*,struct ubifs_pnode*) ; 

__attribute__((used)) static int FUNC19(struct ubifs_info *c)
{
	int lnum, offs, len, from, err, wlen, alen, done_ltab, done_lsave;
	struct ubifs_cnode *cnode;
	void *buf = c->lpt_buf;

	cnode = c->lpt_cnext;
	if (!cnode)
		return 0;
	lnum = c->nhead_lnum;
	offs = c->nhead_offs;
	from = offs;
	/* Ensure empty LEB is unmapped */
	if (offs == 0) {
		err = FUNC13(c, lnum);
		if (err)
			return err;
	}
	/* Try to place lsave and ltab nicely */
	done_lsave = !c->big_lpt;
	done_ltab = 0;
	if (!done_lsave && offs + c->lsave_sz <= c->leb_size) {
		done_lsave = 1;
		FUNC15(c, buf + offs, c->lsave);
		offs += c->lsave_sz;
		FUNC2(c, 1, c->lsave_sz);
	}

	if (offs + c->ltab_sz <= c->leb_size) {
		done_ltab = 1;
		FUNC16(c, buf + offs, c->ltab_cmt);
		offs += c->ltab_sz;
		FUNC2(c, 1, c->ltab_sz);
	}

	/* Loop for each cnode */
	do {
		if (cnode->level)
			len = c->nnode_sz;
		else
			len = c->pnode_sz;
		while (offs + len > c->leb_size) {
			wlen = offs - from;
			if (wlen) {
				alen = FUNC0(wlen, c->min_io_size);
				FUNC5(buf + offs, 0xff, alen - wlen);
				err = FUNC14(c, lnum, buf + from, from,
						       alen);
				if (err)
					return err;
			}
			FUNC2(c, 2, c->leb_size - offs);
			err = FUNC6(c, &lnum);
			if (err)
				goto no_space;
			offs = from = 0;
			FUNC9(c, lnum >= c->lpt_first &&
				     lnum <= c->lpt_last);
			err = FUNC13(c, lnum);
			if (err)
				return err;
			/* Try to place lsave and ltab nicely */
			if (!done_lsave) {
				done_lsave = 1;
				FUNC15(c, buf + offs, c->lsave);
				offs += c->lsave_sz;
				FUNC2(c, 1, c->lsave_sz);
				continue;
			}
			if (!done_ltab) {
				done_ltab = 1;
				FUNC16(c, buf + offs, c->ltab_cmt);
				offs += c->ltab_sz;
				FUNC2(c, 1, c->ltab_sz);
				continue;
			}
			break;
		}
		if (cnode->level)
			FUNC17(c, buf + offs,
					 (struct ubifs_nnode *)cnode);
		else
			FUNC18(c, buf + offs,
					 (struct ubifs_pnode *)cnode);
		/*
		 * The reason for the barriers is the same as in case of TNC.
		 * See comment in 'write_index()'. 'dirty_cow_nnode()' and
		 * 'dirty_cow_pnode()' are the functions for which this is
		 * important.
		 */
		FUNC1(DIRTY_CNODE, &cnode->flags);
		FUNC8();
		FUNC1(COW_CNODE, &cnode->flags);
		FUNC7();
		offs += len;
		FUNC2(c, 1, len);
		cnode = cnode->cnext;
	} while (cnode && cnode != c->lpt_cnext);

	/* Make sure to place LPT's save table */
	if (!done_lsave) {
		if (offs + c->lsave_sz > c->leb_size) {
			wlen = offs - from;
			alen = FUNC0(wlen, c->min_io_size);
			FUNC5(buf + offs, 0xff, alen - wlen);
			err = FUNC14(c, lnum, buf + from, from, alen);
			if (err)
				return err;
			FUNC2(c, 2, c->leb_size - offs);
			err = FUNC6(c, &lnum);
			if (err)
				goto no_space;
			offs = from = 0;
			FUNC9(c, lnum >= c->lpt_first &&
				     lnum <= c->lpt_last);
			err = FUNC13(c, lnum);
			if (err)
				return err;
		}
		done_lsave = 1;
		FUNC15(c, buf + offs, c->lsave);
		offs += c->lsave_sz;
		FUNC2(c, 1, c->lsave_sz);
	}

	/* Make sure to place LPT's own lprops table */
	if (!done_ltab) {
		if (offs + c->ltab_sz > c->leb_size) {
			wlen = offs - from;
			alen = FUNC0(wlen, c->min_io_size);
			FUNC5(buf + offs, 0xff, alen - wlen);
			err = FUNC14(c, lnum, buf + from, from, alen);
			if (err)
				return err;
			FUNC2(c, 2, c->leb_size - offs);
			err = FUNC6(c, &lnum);
			if (err)
				goto no_space;
			offs = from = 0;
			FUNC9(c, lnum >= c->lpt_first &&
				     lnum <= c->lpt_last);
			err = FUNC13(c, lnum);
			if (err)
				return err;
		}
		FUNC16(c, buf + offs, c->ltab_cmt);
		offs += c->ltab_sz;
		FUNC2(c, 1, c->ltab_sz);
	}

	/* Write remaining data in buffer */
	wlen = offs - from;
	alen = FUNC0(wlen, c->min_io_size);
	FUNC5(buf + offs, 0xff, alen - wlen);
	err = FUNC14(c, lnum, buf + from, from, alen);
	if (err)
		return err;

	FUNC2(c, 4, alen - wlen);
	err = FUNC2(c, 3, FUNC0(offs, c->min_io_size));
	if (err)
		return err;

	c->nhead_lnum = lnum;
	c->nhead_offs = FUNC0(offs, c->min_io_size);

	FUNC3("LPT root is at %d:%d", c->lpt_lnum, c->lpt_offs);
	FUNC3("LPT head is at %d:%d", c->nhead_lnum, c->nhead_offs);
	FUNC3("LPT ltab is at %d:%d", c->ltab_lnum, c->ltab_offs);
	if (c->big_lpt)
		FUNC3("LPT lsave is at %d:%d", c->lsave_lnum, c->lsave_offs);

	return 0;

no_space:
	FUNC12(c, "LPT out of space mismatch at LEB %d:%d needing %d, done_ltab %d, done_lsave %d",
		  lnum, offs, len, done_ltab, done_lsave);
	FUNC10(c);
	FUNC11(c);
	FUNC4();
	return err;
}