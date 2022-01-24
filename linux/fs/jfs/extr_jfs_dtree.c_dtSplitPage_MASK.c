#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  tid_t ;
struct tlock {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct pxdlist {size_t npxd; int /*<<< orphan*/ * pxd; } ;
struct metapage {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct lv {int offset; int length; } ;
struct ldtentry {int /*<<< orphan*/  index; int /*<<< orphan*/  namlen; } ;
struct inode {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct idtentry {int /*<<< orphan*/  namlen; } ;
struct dtsplit {int index; int nslot; int /*<<< orphan*/  data; int /*<<< orphan*/  key; struct pxdlist* pxdlist; struct tlock* mp; } ;
struct dtslot {int next; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  pxd_t ;
struct TYPE_10__ {int flag; int nextindex; int stblindex; int maxslot; int freelist; int freecnt; void* prev; void* next; int /*<<< orphan*/  self; } ;
struct TYPE_11__ {TYPE_1__ header; struct dtslot* slot; } ;
typedef  TYPE_2__ dtpage_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  BT_INTERNAL 129 
#define  BT_LEAF 128 
 int /*<<< orphan*/  FUNC1 (struct tlock*,struct tlock*) ; 
 int BT_TYPE ; 
 scalar_t__ FUNC2 (struct tlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct tlock*,scalar_t__,struct tlock*,int,TYPE_2__*,int) ; 
 size_t* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (struct tlock*,struct tlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct tlock*) ; 
 int EIO ; 
 int L2DTSLOTSIZE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int PSIZE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct tlock*) ; 
 int FUNC13 (struct tlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dt_lock**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,TYPE_2__*,struct dt_lock**,struct dt_lock**,scalar_t__) ; 
 struct tlock* FUNC16 (struct tlock*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct tlock*,struct tlock*,struct tlock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct tlock*,int /*<<< orphan*/ ,scalar_t__,int,struct tlock**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (struct tlock*) ; 
 int tlckDTREE ; 
 int tlckENTRY ; 
 int tlckNEW ; 
 int tlckRELINK ; 
 scalar_t__ FUNC23 (struct dt_lock*) ; 
 struct tlock* FUNC24 (int /*<<< orphan*/ ,struct tlock*,struct tlock*,int) ; 

__attribute__((used)) static int FUNC25(tid_t tid, struct inode *ip, struct dtsplit * split,
	    struct metapage ** rmpp, dtpage_t ** rpp, pxd_t * rpxdp)
{
	int rc = 0;
	struct metapage *smp;
	dtpage_t *sp;
	struct metapage *rmp;
	dtpage_t *rp;		/* new right page allocated */
	s64 rbn;		/* new right page block number */
	struct metapage *mp;
	dtpage_t *p;
	s64 nextbn;
	struct pxdlist *pxdlist;
	pxd_t *pxd;
	int skip, nextindex, half, left, nxt, off, si;
	struct ldtentry *ldtentry;
	struct idtentry *idtentry;
	u8 *stbl;
	struct dtslot *f;
	int fsi, stblsize;
	int n;
	struct dt_lock *sdtlck, *rdtlck;
	struct tlock *tlck;
	struct dt_lock *dtlck;
	struct lv *slv, *rlv, *lv;

	/* get split page */
	smp = split->mp;
	sp = FUNC5(ip, smp);

	/*
	 * allocate the new right page for the split
	 */
	pxdlist = split->pxdlist;
	pxd = &pxdlist->pxd[pxdlist->npxd];
	pxdlist->npxd++;
	rbn = FUNC10(pxd);
	rmp = FUNC16(ip, rbn, PSIZE, 1);
	if (rmp == NULL)
		return -EIO;

	/* Allocate blocks to quota. */
	rc = FUNC13(ip, FUNC20(pxd));
	if (rc) {
		FUNC22(rmp);
		return rc;
	}

	FUNC17("dtSplitPage: ip:0x%p smp:0x%p rmp:0x%p", ip, smp, rmp);

	FUNC1(rmp, ip);
	/*
	 * acquire a transaction lock on the new right page
	 */
	tlck = FUNC24(tid, ip, rmp, tlckDTREE | tlckNEW);
	rdtlck = (struct dt_lock *) & tlck->lock;

	rp = (dtpage_t *) rmp->data;
	*rpp = rp;
	rp->header.self = *pxd;

	FUNC1(smp, ip);
	/*
	 * acquire a transaction lock on the split page
	 *
	 * action:
	 */
	tlck = FUNC24(tid, ip, smp, tlckDTREE | tlckENTRY);
	sdtlck = (struct dt_lock *) & tlck->lock;

	/* linelock header of split page */
	FUNC0(sdtlck->index == 0);
	slv = & sdtlck->lv[0];
	slv->offset = 0;
	slv->length = 1;
	sdtlck->index++;

	/*
	 * initialize/update sibling pointers between sp and rp
	 */
	nextbn = FUNC19(sp->header.next);
	rp->header.next = FUNC11(nextbn);
	rp->header.prev = FUNC11(FUNC10(&sp->header.self));
	sp->header.next = FUNC11(rbn);

	/*
	 * initialize new right page
	 */
	rp->header.flag = sp->header.flag;

	/* compute sorted entry table at start of extent data area */
	rp->header.nextindex = 0;
	rp->header.stblindex = 1;

	n = PSIZE >> L2DTSLOTSIZE;
	rp->header.maxslot = n;
	stblsize = (n + 31) >> L2DTSLOTSIZE;	/* in unit of slot */

	/* init freelist */
	fsi = rp->header.stblindex + stblsize;
	rp->header.freelist = fsi;
	rp->header.freecnt = rp->header.maxslot - fsi;

	/*
	 *	sequential append at tail: append without split
	 *
	 * If splitting the last page on a level because of appending
	 * a entry to it (skip is maxentry), it's likely that the access is
	 * sequential. Adding an empty page on the side of the level is less
	 * work and can push the fill factor much higher than normal.
	 * If we're wrong it's no big deal, we'll just do the split the right
	 * way next time.
	 * (It may look like it's equally easy to do a similar hack for
	 * reverse sorted data, that is, split the tree left,
	 * but it's not. Be my guest.)
	 */
	if (nextbn == 0 && split->index == sp->header.nextindex) {
		/* linelock header + stbl (first slot) of new page */
		rlv = & rdtlck->lv[rdtlck->index];
		rlv->offset = 0;
		rlv->length = 2;
		rdtlck->index++;

		/*
		 * initialize freelist of new right page
		 */
		f = &rp->slot[fsi];
		for (fsi++; fsi < rp->header.maxslot; f++, fsi++)
			f->next = fsi;
		f->next = -1;

		/* insert entry at the first entry of the new right page */
		FUNC14(rp, 0, split->key, split->data, &rdtlck);

		goto out;
	}

	/*
	 *	non-sequential insert (at possibly middle page)
	 */

	/*
	 * update prev pointer of previous right sibling page;
	 */
	if (nextbn != 0) {
		FUNC3(ip, nextbn, mp, PSIZE, p, rc);
		if (rc) {
			FUNC12(rmp);
			return rc;
		}

		FUNC1(mp, ip);
		/*
		 * acquire a transaction lock on the next page
		 */
		tlck = FUNC24(tid, ip, mp, tlckDTREE | tlckRELINK);
		FUNC17("dtSplitPage: tlck = 0x%p, ip = 0x%p, mp=0x%p",
			tlck, ip, mp);
		dtlck = (struct dt_lock *) & tlck->lock;

		/* linelock header of previous right sibling page */
		lv = & dtlck->lv[dtlck->index];
		lv->offset = 0;
		lv->length = 1;
		dtlck->index++;

		p->header.prev = FUNC11(rbn);

		FUNC6(mp);
	}

	/*
	 * split the data between the split and right pages.
	 */
	skip = split->index;
	half = (PSIZE >> L2DTSLOTSIZE) >> 1;	/* swag */
	left = 0;

	/*
	 *	compute fill factor for split pages
	 *
	 * <nxt> traces the next entry to move to rp
	 * <off> traces the next entry to stay in sp
	 */
	stbl = (u8 *) & sp->slot[sp->header.stblindex];
	nextindex = sp->header.nextindex;
	for (nxt = off = 0; nxt < nextindex; ++off) {
		if (off == skip)
			/* check for fill factor with new entry size */
			n = split->nslot;
		else {
			si = stbl[nxt];
			switch (sp->header.flag & BT_TYPE) {
			case BT_LEAF:
				ldtentry = (struct ldtentry *) & sp->slot[si];
				if (FUNC2(ip))
					n = FUNC8(ldtentry->namlen);
				else
					n = FUNC9(ldtentry->
							   namlen);
				break;

			case BT_INTERNAL:
				idtentry = (struct idtentry *) & sp->slot[si];
				n = FUNC7(idtentry->namlen);
				break;

			default:
				break;
			}

			++nxt;	/* advance to next entry to move in sp */
		}

		left += n;
		if (left >= half)
			break;
	}

	/* <nxt> poins to the 1st entry to move */

	/*
	 *	move entries to right page
	 *
	 * dtMoveEntry() initializes rp and reserves entry for insertion
	 *
	 * split page moved out entries are linelocked;
	 * new/right page moved in entries are linelocked;
	 */
	/* linelock header + stbl of new right page */
	rlv = & rdtlck->lv[rdtlck->index];
	rlv->offset = 0;
	rlv->length = 5;
	rdtlck->index++;

	FUNC15(sp, nxt, rp, &sdtlck, &rdtlck, FUNC2(ip));

	sp->header.nextindex = nxt;

	/*
	 * finalize freelist of new right page
	 */
	fsi = rp->header.freelist;
	f = &rp->slot[fsi];
	for (fsi++; fsi < rp->header.maxslot; f++, fsi++)
		f->next = fsi;
	f->next = -1;

	/*
	 * Update directory index table for entries now in right page
	 */
	if ((rp->header.flag & BT_LEAF) && FUNC2(ip)) {
		s64 lblock;

		mp = NULL;
		stbl = FUNC4(rp);
		for (n = 0; n < rp->header.nextindex; n++) {
			ldtentry = (struct ldtentry *) & rp->slot[stbl[n]];
			FUNC21(tid, ip, FUNC18(ldtentry->index),
				     rbn, n, &mp, &lblock);
		}
		if (mp)
			FUNC22(mp);
	}

	/*
	 * the skipped index was on the left page,
	 */
	if (skip <= off) {
		/* insert the new entry in the split page */
		FUNC14(sp, skip, split->key, split->data, &sdtlck);

		/* linelock stbl of split page */
		if (sdtlck->index >= sdtlck->maxcnt)
			sdtlck = (struct dt_lock *) FUNC23(sdtlck);
		slv = & sdtlck->lv[sdtlck->index];
		n = skip >> L2DTSLOTSIZE;
		slv->offset = sp->header.stblindex + n;
		slv->length =
		    ((sp->header.nextindex - 1) >> L2DTSLOTSIZE) - n + 1;
		sdtlck->index++;
	}
	/*
	 * the skipped index was on the right page,
	 */
	else {
		/* adjust the skip index to reflect the new position */
		skip -= nxt;

		/* insert the new entry in the right page */
		FUNC14(rp, skip, split->key, split->data, &rdtlck);
	}

      out:
	*rmpp = rmp;
	*rpxdp = *pxd;

	return rc;
}