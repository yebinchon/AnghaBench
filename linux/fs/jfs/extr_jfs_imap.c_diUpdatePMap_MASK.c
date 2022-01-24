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
typedef  int u32 ;
struct tblock {int lsn; int clsn; int /*<<< orphan*/  synclist; int /*<<< orphan*/  sb; } ;
struct metapage {int lsn; int clsn; int /*<<< orphan*/  synclist; struct jfs_log* log; scalar_t__ data; } ;
struct jfs_log {int /*<<< orphan*/  count; } ;
struct inomap {int im_nextiag; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct iag {int /*<<< orphan*/ * pmap; int /*<<< orphan*/ * wmap; } ;
struct TYPE_4__ {struct inomap* i_imap; } ;
struct TYPE_3__ {struct jfs_log* log; } ;

/* Variables and functions */
 int EIO ; 
 int HIGHORDER ; 
 int INOSPEREXT ; 
 int INOSPERIAG ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int L2INOSPEREXT ; 
 int /*<<< orphan*/  FUNC5 (struct jfs_log*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct jfs_log*,unsigned long) ; 
 int /*<<< orphan*/  RDWRLOCK_IMAP ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int,struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC15 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC16 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC17 (struct metapage*) ; 

int
FUNC18(struct inode *ipimap,
	     unsigned long inum, bool is_free, struct tblock * tblk)
{
	int rc;
	struct iag *iagp;
	struct metapage *mp;
	int iagno, ino, extno, bitno;
	struct inomap *imap;
	u32 mask;
	struct jfs_log *log;
	int lsn, difft, diffp;
	unsigned long flags;

	imap = FUNC3(ipimap)->i_imap;
	/* get the iag number containing the inode */
	iagno = FUNC0(inum);
	/* make sure that the iag is contained within the map */
	if (iagno >= imap->im_nextiag) {
		FUNC10(ipimap->i_sb, "the iag is outside the map\n");
		return -EIO;
	}
	/* read the iag */
	FUNC1(ipimap, RDWRLOCK_IMAP);
	rc = FUNC9(imap, iagno, &mp);
	FUNC2(ipimap);
	if (rc)
		return (rc);
	FUNC15(mp);
	iagp = (struct iag *) mp->data;
	/* get the inode number and extent number of the inode within
	 * the iag and the inode number within the extent.
	 */
	ino = inum & (INOSPERIAG - 1);
	extno = ino >> L2INOSPEREXT;
	bitno = ino & (INOSPEREXT - 1);
	mask = HIGHORDER >> bitno;
	/*
	 * mark the inode free in persistent map:
	 */
	if (is_free) {
		/* The inode should have been allocated both in working
		 * map and in persistent map;
		 * the inode will be freed from working map at the release
		 * of last reference release;
		 */
		if (!(FUNC11(iagp->wmap[extno]) & mask)) {
			FUNC10(ipimap->i_sb,
				  "inode %ld not marked as allocated in wmap!\n",
				  inum);
		}
		if (!(FUNC11(iagp->pmap[extno]) & mask)) {
			FUNC10(ipimap->i_sb,
				  "inode %ld not marked as allocated in pmap!\n",
				  inum);
		}
		/* update the bitmap for the extent of the freed inode */
		iagp->pmap[extno] &= FUNC8(~mask);
	}
	/*
	 * mark the inode allocated in persistent map:
	 */
	else {
		/* The inode should be already allocated in the working map
		 * and should be free in persistent map;
		 */
		if (!(FUNC11(iagp->wmap[extno]) & mask)) {
			FUNC16(mp);
			FUNC10(ipimap->i_sb,
				  "the inode is not allocated in the working map\n");
			return -EIO;
		}
		if ((FUNC11(iagp->pmap[extno]) & mask) != 0) {
			FUNC16(mp);
			FUNC10(ipimap->i_sb,
				  "the inode is not free in the persistent map\n");
			return -EIO;
		}
		/* update the bitmap for the extent of the allocated inode */
		iagp->pmap[extno] |= FUNC8(mask);
	}
	/*
	 * update iag lsn
	 */
	lsn = tblk->lsn;
	log = FUNC4(tblk->sb)->log;
	FUNC5(log, flags);
	if (mp->lsn != 0) {
		/* inherit older/smaller lsn */
		FUNC14(difft, lsn, log);
		FUNC14(diffp, mp->lsn, log);
		if (difft < diffp) {
			mp->lsn = lsn;
			/* move mp after tblock in logsync list */
			FUNC13(&mp->synclist, &tblk->synclist);
		}
		/* inherit younger/larger clsn */
		FUNC7(mp->clsn);
		FUNC14(difft, tblk->clsn, log);
		FUNC14(diffp, mp->clsn, log);
		if (difft > diffp)
			mp->clsn = tblk->clsn;
	} else {
		mp->log = log;
		mp->lsn = lsn;
		/* insert mp after tblock in logsync list */
		log->count++;
		FUNC12(&mp->synclist, &tblk->synclist);
		mp->clsn = tblk->clsn;
	}
	FUNC6(log, flags);
	FUNC17(mp);
	return (0);
}