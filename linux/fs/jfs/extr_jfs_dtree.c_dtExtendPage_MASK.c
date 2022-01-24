#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  tid_t ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct super_block {int dummy; } ;
struct pxdlist {size_t npxd; int /*<<< orphan*/ * pxd; } ;
struct pxd_lock {int index; int /*<<< orphan*/  pxd; int /*<<< orphan*/  flag; } ;
struct metapage {int dummy; } ;
struct lv {int offset; int length; } ;
struct ldtentry {int /*<<< orphan*/  index; } ;
struct inode {struct super_block* i_sb; } ;
struct dtsplit {int /*<<< orphan*/  data; int /*<<< orphan*/  key; int /*<<< orphan*/  index; struct pxdlist* pxdlist; struct metapage* mp; } ;
struct dtslot {int next; } ;
struct dt_lock {size_t index; struct lv* lv; } ;
struct btstack {int dummy; } ;
struct btframe {int /*<<< orphan*/  bn; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  pxd_t ;
struct TYPE_10__ {int nextindex; int stblindex; int maxslot; int freelist; int freecnt; int /*<<< orphan*/  self; } ;
struct TYPE_11__ {struct dtslot* slot; TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;
struct TYPE_12__ {int l2bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*,struct inode*) ; 
 struct btframe* FUNC1 (struct btstack*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,struct metapage*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 size_t* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (struct inode*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC6 (struct metapage*) ; 
 TYPE_6__* FUNC7 (struct super_block*) ; 
 int L2DTSLOTSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dt_lock**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,struct dt_lock**) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct inode*,struct metapage*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dtslot*,struct dtslot*,int) ; 
 int /*<<< orphan*/  mlckFREEPXD ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,scalar_t__,int,struct metapage**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (struct metapage*) ; 
 int tlckDTREE ; 
 int tlckENTRY ; 
 int tlckEXTEND ; 
 int tlckNEW ; 
 int tlckRELOCATE ; 
 struct tlock* FUNC17 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 struct tlock* FUNC18 (int /*<<< orphan*/ ,struct inode*,int) ; 

__attribute__((used)) static int FUNC19(tid_t tid,
	     struct inode *ip, struct dtsplit * split, struct btstack * btstack)
{
	struct super_block *sb = ip->i_sb;
	int rc;
	struct metapage *smp, *pmp, *mp;
	dtpage_t *sp, *pp;
	struct pxdlist *pxdlist;
	pxd_t *pxd, *tpxd;
	int xlen, xsize;
	int newstblindex, newstblsize;
	int oldstblindex, oldstblsize;
	int fsi, last;
	struct dtslot *f;
	struct btframe *parent;
	int n;
	struct dt_lock *dtlck;
	s64 xaddr, txaddr;
	struct tlock *tlck;
	struct pxd_lock *pxdlock;
	struct lv *lv;
	uint type;
	struct ldtentry *ldtentry;
	u8 *stbl;

	/* get page to extend */
	smp = split->mp;
	sp = FUNC5(ip, smp);

	/* get parent/root page */
	parent = FUNC1(btstack);
	FUNC3(ip, parent->bn, pmp, PSIZE, pp, rc);
	if (rc)
		return (rc);

	/*
	 *	extend the extent
	 */
	pxdlist = split->pxdlist;
	pxd = &pxdlist->pxd[pxdlist->npxd];
	pxdlist->npxd++;

	xaddr = FUNC8(pxd);
	tpxd = &sp->header.self;
	txaddr = FUNC8(tpxd);
	/* in-place extension */
	if (xaddr == txaddr) {
		type = tlckEXTEND;
	}
	/* relocation */
	else {
		type = tlckNEW;

		/* save moved extent descriptor for later free */
		tlck = FUNC18(tid, ip, tlckDTREE | tlckRELOCATE);
		pxdlock = (struct pxd_lock *) & tlck->lock;
		pxdlock->flag = mlckFREEPXD;
		pxdlock->pxd = sp->header.self;
		pxdlock->index = 1;

		/*
		 * Update directory index table to reflect new page address
		 */
		if (FUNC2(ip)) {
			s64 lblock;

			mp = NULL;
			stbl = FUNC4(sp);
			for (n = 0; n < sp->header.nextindex; n++) {
				ldtentry =
				    (struct ldtentry *) & sp->slot[stbl[n]];
				FUNC15(tid, ip,
					     FUNC12(ldtentry->index),
					     xaddr, n, &mp, &lblock);
			}
			if (mp)
				FUNC16(mp);
		}
	}

	/*
	 *	extend the page
	 */
	sp->header.self = *pxd;

	FUNC11("dtExtendPage: ip:0x%p smp:0x%p sp:0x%p", ip, smp, sp);

	FUNC0(smp, ip);
	/*
	 * acquire a transaction lock on the extended/leaf page
	 */
	tlck = FUNC17(tid, ip, smp, tlckDTREE | type);
	dtlck = (struct dt_lock *) & tlck->lock;
	lv = & dtlck->lv[0];

	/* update buffer extent descriptor of extended page */
	xlen = FUNC13(pxd);
	xsize = xlen << FUNC7(sb)->l2bsize;

	/*
	 * copy old stbl to new stbl at start of extended area
	 */
	oldstblindex = sp->header.stblindex;
	oldstblsize = (sp->header.maxslot + 31) >> L2DTSLOTSIZE;
	newstblindex = sp->header.maxslot;
	n = xsize >> L2DTSLOTSIZE;
	newstblsize = (n + 31) >> L2DTSLOTSIZE;
	FUNC14(&sp->slot[newstblindex], &sp->slot[oldstblindex],
	       sp->header.nextindex);

	/*
	 * in-line extension: linelock old area of extended page
	 */
	if (type == tlckEXTEND) {
		/* linelock header */
		lv->offset = 0;
		lv->length = 1;
		dtlck->index++;
		lv++;

		/* linelock new stbl of extended page */
		lv->offset = newstblindex;
		lv->length = newstblsize;
	}
	/*
	 * relocation: linelock whole relocated area
	 */
	else {
		lv->offset = 0;
		lv->length = sp->header.maxslot + newstblsize;
	}

	dtlck->index++;

	sp->header.maxslot = n;
	sp->header.stblindex = newstblindex;
	/* sp->header.nextindex remains the same */

	/*
	 * add old stbl region at head of freelist
	 */
	fsi = oldstblindex;
	f = &sp->slot[fsi];
	last = sp->header.freelist;
	for (n = 0; n < oldstblsize; n++, fsi++, f++) {
		f->next = last;
		last = fsi;
	}
	sp->header.freelist = last;
	sp->header.freecnt += oldstblsize;

	/*
	 * append free region of newly extended area at tail of freelist
	 */
	/* init free region of newly extended area */
	fsi = n = newstblindex + newstblsize;
	f = &sp->slot[fsi];
	for (fsi++; fsi < sp->header.maxslot; f++, fsi++)
		f->next = fsi;
	f->next = -1;

	/* append new free region at tail of old freelist */
	fsi = sp->header.freelist;
	if (fsi == -1)
		sp->header.freelist = n;
	else {
		do {
			f = &sp->slot[fsi];
			fsi = f->next;
		} while (fsi != -1);

		f->next = n;
	}

	sp->header.freecnt += sp->header.maxslot - n;

	/*
	 * insert the new entry
	 */
	FUNC9(sp, split->index, split->key, split->data, &dtlck);

	FUNC0(pmp, ip);
	/*
	 * linelock any freeslots residing in old extent
	 */
	if (type == tlckEXTEND) {
		n = sp->header.maxslot >> 2;
		if (sp->header.freelist < n)
			FUNC10(sp, n, &dtlck);
	}

	/*
	 *	update parent entry on the parent/root page
	 */
	/*
	 * acquire a transaction lock on the parent/root page
	 */
	tlck = FUNC17(tid, ip, pmp, tlckDTREE | tlckENTRY);
	dtlck = (struct dt_lock *) & tlck->lock;
	lv = & dtlck->lv[dtlck->index];

	/* linelock parent entry - 1st slot */
	lv->offset = 1;
	lv->length = 1;
	dtlck->index++;

	/* update the parent pxd for page extension */
	tpxd = (pxd_t *) & pp->slot[1];
	*tpxd = *pxd;

	FUNC6(pmp);
	return 0;
}