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
struct tlock {scalar_t__ next; int flag; struct metapage* mp; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct inode* ip; int /*<<< orphan*/  ixpxd; } ;
struct tblock {int xflag; scalar_t__ next; int flag; TYPE_1__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  sb; } ;
struct pxd_lock {int index; int /*<<< orphan*/  pxd; int /*<<< orphan*/  flag; } ;
struct metapage {int xflag; scalar_t__ lid; int nohomeok; } ;
struct maplock {int index; int flag; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  scalar_t__ lid_t ;
struct TYPE_4__ {struct inode* ipimap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int COMMIT_CREATE ; 
 int COMMIT_DELETE ; 
 int COMMIT_PAGE ; 
 int COMMIT_PMAP ; 
 int COMMIT_PWMAP ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int,struct tblock*) ; 
 int /*<<< orphan*/  FUNC4 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC5 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct tlock* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 
 int mlckALLOC ; 
 int /*<<< orphan*/  mlckALLOCPXD ; 
 int tblkGC_LAZY ; 
 int tlckDIRECTORY ; 
 int tlckFREEPAGE ; 
 int tlckUPDATEMAP ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct maplock*,struct tblock*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct maplock*,struct tblock*,int) ; 

__attribute__((used)) static void FUNC11(struct tblock * tblk)
{
	struct inode *ip;
	struct inode *ipimap;
	lid_t lid;
	struct tlock *tlck;
	struct maplock *maplock;
	struct pxd_lock pxdlock;
	int maptype;
	int k, nlock;
	struct metapage *mp = NULL;

	ipimap = FUNC1(tblk->sb)->ipimap;

	maptype = (tblk->xflag & COMMIT_PMAP) ? COMMIT_PMAP : COMMIT_PWMAP;


	/*
	 *	update block allocation map
	 *
	 * update allocation state in pmap (and wmap) and
	 * update lsn of the pmap page;
	 */
	/*
	 * scan each tlock/page of transaction for block allocation/free:
	 *
	 * for each tlock/page of transaction, update map.
	 *  ? are there tlock for pmap and pwmap at the same time ?
	 */
	for (lid = tblk->next; lid; lid = tlck->next) {
		tlck = FUNC7(lid);

		if ((tlck->flag & tlckUPDATEMAP) == 0)
			continue;

		if (tlck->flag & tlckFREEPAGE) {
			/*
			 * Another thread may attempt to reuse freed space
			 * immediately, so we want to get rid of the metapage
			 * before anyone else has a chance to get it.
			 * Lock metapage, update maps, then invalidate
			 * the metapage.
			 */
			mp = tlck->mp;
			FUNC0(mp->xflag & COMMIT_PAGE);
			FUNC5(mp);
		}

		/*
		 * extent list:
		 * . in-line PXD list:
		 * . out-of-line XAD list:
		 */
		maplock = (struct maplock *) & tlck->lock;
		nlock = maplock->index;

		for (k = 0; k < nlock; k++, maplock++) {
			/*
			 * allocate blocks in persistent map:
			 *
			 * blocks have been allocated from wmap at alloc time;
			 */
			if (maplock->flag & mlckALLOC) {
				FUNC9(ipimap, maplock, tblk);
			}
			/*
			 * free blocks in persistent and working map:
			 * blocks will be freed in pmap and then in wmap;
			 *
			 * ? tblock specifies the PMAP/PWMAP based upon
			 * transaction
			 *
			 * free blocks in persistent map:
			 * blocks will be freed from wmap at last reference
			 * release of the object for regular files;
			 *
			 * Alway free blocks from both persistent & working
			 * maps for directories
			 */
			else {	/* (maplock->flag & mlckFREE) */

				if (tlck->flag & tlckDIRECTORY)
					FUNC10(ipimap, maplock,
						  tblk, COMMIT_PWMAP);
				else
					FUNC10(ipimap, maplock,
						  tblk, maptype);
			}
		}
		if (tlck->flag & tlckFREEPAGE) {
			if (!(tblk->flag & tblkGC_LAZY)) {
				/* This is equivalent to txRelease */
				FUNC0(mp->lid == lid);
				tlck->mp->lid = 0;
			}
			FUNC2(mp->nohomeok == 1);
			FUNC8(mp);
			FUNC4(mp);
			tlck->mp = NULL;
		}
	}
	/*
	 *	update inode allocation map
	 *
	 * update allocation state in pmap and
	 * update lsn of the pmap page;
	 * update in-memory inode flag/state
	 *
	 * unlock mapper/write lock
	 */
	if (tblk->xflag & COMMIT_CREATE) {
		FUNC3(ipimap, tblk->ino, false, tblk);
		/* update persistent block allocation map
		 * for the allocation of inode extent;
		 */
		pxdlock.flag = mlckALLOCPXD;
		pxdlock.pxd = tblk->u.ixpxd;
		pxdlock.index = 1;
		FUNC9(ipimap, (struct maplock *) & pxdlock, tblk);
	} else if (tblk->xflag & COMMIT_DELETE) {
		ip = tblk->u.ip;
		FUNC3(ipimap, ip->i_ino, true, tblk);
		FUNC6(ip);
	}
}