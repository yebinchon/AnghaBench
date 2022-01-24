#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  tid_t ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct ldtentry {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct component_name {int dummy; } ;
struct btstack {int /*<<< orphan*/  top; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_8__ {int nextindex; int flag; scalar_t__ next; scalar_t__ stblindex; } ;
struct TYPE_9__ {int /*<<< orphan*/ * slot; TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*,struct inode*) ; 
 int BT_ROOT ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,struct metapage*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct metapage*,TYPE_2__*,int) ; 
 size_t* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct metapage*) ; 
 int L2DTSLOTSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,struct dt_lock**) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct inode*,struct metapage*,TYPE_2__*,struct btstack*) ; 
 int FUNC8 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct inode*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct inode*,int,int /*<<< orphan*/ ,int,struct metapage**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct metapage*) ; 
 int tlckDTREE ; 
 int tlckENTRY ; 
 scalar_t__ FUNC14 (struct dt_lock*) ; 
 struct tlock* FUNC15 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 

int FUNC16(tid_t tid,
	 struct inode *ip, struct component_name * key, ino_t * ino, int flag)
{
	int rc = 0;
	s64 bn;
	struct metapage *mp, *imp;
	dtpage_t *p;
	int index;
	struct btstack btstack;
	struct dt_lock *dtlck;
	struct tlock *tlck;
	struct lv *lv;
	int i;
	struct ldtentry *ldtentry;
	u8 *stbl;
	u32 table_index, next_index;
	struct metapage *nmp;
	dtpage_t *np;

	/*
	 *	search for the entry to delete:
	 *
	 * dtSearch() returns (leaf page pinned, index at which to delete).
	 */
	if ((rc = FUNC8(ip, key, ino, &btstack, flag)))
		return rc;

	/* retrieve search result */
	FUNC3(ip, btstack.top, bn, mp, p, index);

	/*
	 * We need to find put the index of the next entry into the
	 * directory index table in order to resume a readdir from this
	 * entry.
	 */
	if (FUNC1(ip)) {
		stbl = FUNC4(p);
		ldtentry = (struct ldtentry *) & p->slot[stbl[index]];
		table_index = FUNC10(ldtentry->index);
		if (index == (p->header.nextindex - 1)) {
			/*
			 * Last entry in this leaf page
			 */
			if ((p->header.flag & BT_ROOT)
			    || (p->header.next == 0))
				next_index = -1;
			else {
				/* Read next leaf page */
				FUNC2(ip, FUNC11(p->header.next),
					   nmp, PSIZE, np, rc);
				if (rc)
					next_index = -1;
				else {
					stbl = FUNC4(np);
					ldtentry =
					    (struct ldtentry *) & np->
					    slot[stbl[0]];
					next_index =
					    FUNC10(ldtentry->index);
					FUNC5(nmp);
				}
			}
		} else {
			ldtentry =
			    (struct ldtentry *) & p->slot[stbl[index + 1]];
			next_index = FUNC10(ldtentry->index);
		}
		FUNC9(tid, ip, table_index, next_index);
	}
	/*
	 * the leaf page becomes empty, delete the page
	 */
	if (p->header.nextindex == 1) {
		/* delete empty page */
		rc = FUNC7(tid, ip, mp, p, &btstack);
	}
	/*
	 * the leaf page has other entries remaining:
	 *
	 * delete the entry from the leaf page.
	 */
	else {
		FUNC0(mp, ip);
		/*
		 * acquire a transaction lock on the leaf page
		 */
		tlck = FUNC15(tid, ip, mp, tlckDTREE | tlckENTRY);
		dtlck = (struct dt_lock *) & tlck->lock;

		/*
		 * Do not assume that dtlck->index will be zero.  During a
		 * rename within a directory, this transaction may have
		 * modified this page already when adding the new entry.
		 */

		/* linelock header */
		if (dtlck->index >= dtlck->maxcnt)
			dtlck = (struct dt_lock *) FUNC14(dtlck);
		lv = & dtlck->lv[dtlck->index];
		lv->offset = 0;
		lv->length = 1;
		dtlck->index++;

		/* linelock stbl of non-root leaf page */
		if (!(p->header.flag & BT_ROOT)) {
			if (dtlck->index >= dtlck->maxcnt)
				dtlck = (struct dt_lock *) FUNC14(dtlck);
			lv = & dtlck->lv[dtlck->index];
			i = index >> L2DTSLOTSIZE;
			lv->offset = p->header.stblindex + i;
			lv->length =
			    ((p->header.nextindex - 1) >> L2DTSLOTSIZE) -
			    i + 1;
			dtlck->index++;
		}

		/* free the leaf entry */
		FUNC6(p, index, &dtlck);

		/*
		 * Update directory index table for entries moved in stbl
		 */
		if (FUNC1(ip) && index < p->header.nextindex) {
			s64 lblock;

			imp = NULL;
			stbl = FUNC4(p);
			for (i = index; i < p->header.nextindex; i++) {
				ldtentry =
				    (struct ldtentry *) & p->slot[stbl[i]];
				FUNC12(tid, ip,
					     FUNC10(ldtentry->index),
					     bn, i, &imp, &lblock);
			}
			if (imp)
				FUNC13(imp);
		}

		FUNC5(mp);
	}

	return rc;
}