#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  nextindex; } ;
struct TYPE_10__ {TYPE_1__ header; TYPE_4__* xad; } ;
typedef  TYPE_3__ xtpage_t ;
struct TYPE_11__ {int flag; } ;
typedef  TYPE_4__ xad_t ;
typedef  int uint ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  tid_t ;
struct tlock {int type; int /*<<< orphan*/  lock; struct metapage* mp; } ;
struct metapage {scalar_t__ data; } ;
struct lv {size_t offset; int length; } ;
struct linelock {int index; struct lv* lv; } ;
struct jfs_sb_info {unsigned long l2nbperpage; int nbperpage; int l2niperblk; } ;
struct jfs_inode_info {TYPE_4__ i_dirtable; TYPE_4__* i_inline_ea; TYPE_4__* i_inline; int /*<<< orphan*/  i_dtroot; TYPE_3__ i_xtroot; scalar_t__ blid; scalar_t__ xtlid; int /*<<< orphan*/  ixpxd; TYPE_2__* i_imap; struct inode* ipimap; } ;
struct inode {int i_ino; int i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct dinode {TYPE_4__ di_dirtable; TYPE_4__ di_inlineea; TYPE_4__ di_fastsymlink; int /*<<< orphan*/  di_dtroot; TYPE_3__ di_xtroot; } ;
typedef  unsigned long s64 ;
typedef  int s32 ;
typedef  scalar_t__ lid_t ;
struct TYPE_12__ {TYPE_4__* slot; } ;
typedef  TYPE_5__ dtpage_t ;
struct TYPE_9__ {scalar_t__ im_nbperiext; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_Dirtable ; 
 int /*<<< orphan*/  COMMIT_Inlineea ; 
 int EIO ; 
 int IDATASIZE ; 
 int INODESLOTSIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,int,unsigned long) ; 
 int INOSPERIAG ; 
 int INOSPERPAGE ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int L2DISIZE ; 
 int L2DTSLOTSIZE ; 
 int L2INODESLOTSIZE ; 
 int L2XTSLOTSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int XAD_EXTENDED ; 
 int XAD_NEW ; 
 size_t XTENTRYSTART ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dinode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 struct tlock* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_4__*,int) ; 
 struct metapage* FUNC15 (struct inode*,unsigned long,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct inode*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct inode*) ; 
 int tlckBTROOT ; 
 int tlckDTREE ; 
 int tlckENTRY ; 
 int tlckINODE ; 
 int tlckXTREE ; 
 struct tlock* FUNC18 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct metapage*) ; 

int FUNC20(tid_t tid, struct inode *ip)
{
	struct jfs_sb_info *sbi = FUNC2(ip->i_sb);
	struct jfs_inode_info *jfs_ip = FUNC1(ip);
	int rc = 0;
	s32 ino;
	struct dinode *dp;
	s64 blkno;
	int block_offset;
	int inodes_left;
	struct metapage *mp;
	unsigned long pageno;
	int rel_inode;
	int dioffset;
	struct inode *ipimap;
	uint type;
	lid_t lid;
	struct tlock *ditlck, *tlck;
	struct linelock *dilinelock, *ilinelock;
	struct lv *lv;
	int n;

	ipimap = jfs_ip->ipimap;

	ino = ip->i_ino & (INOSPERIAG - 1);

	if (!FUNC5(&(jfs_ip->ixpxd)) ||
	    (FUNC12(&(jfs_ip->ixpxd)) !=
	     FUNC1(ipimap)->i_imap->im_nbperiext)) {
		FUNC10(ip->i_sb, "ixpxd invalid\n");
		return -EIO;
	}

	/*
	 * read the page of disk inode containing the specified inode:
	 */
	/* compute the block address of the page */
	blkno = FUNC0(&(jfs_ip->ixpxd), ino, sbi->l2nbperpage);

	rel_inode = (ino & (INOSPERPAGE - 1));
	pageno = blkno >> sbi->l2nbperpage;

	if ((block_offset = ((u32) blkno & (sbi->nbperpage - 1)))) {
		/*
		 * OS/2 didn't always align inode extents on page boundaries
		 */
		inodes_left =
		    (sbi->nbperpage - block_offset) << sbi->l2niperblk;

		if (rel_inode < inodes_left)
			rel_inode += block_offset << sbi->l2niperblk;
		else {
			pageno += 1;
			rel_inode -= inodes_left;
		}
	}
	/* read the page of disk inode */
      retry:
	mp = FUNC15(ipimap, pageno << sbi->l2nbperpage, PSIZE, 1);
	if (!mp)
		return -EIO;

	/* get the pointer to the disk inode */
	dp = (struct dinode *) mp->data;
	dp += rel_inode;

	dioffset = (ino & (INOSPERPAGE - 1)) << L2DISIZE;

	/*
	 * acquire transaction lock on the on-disk inode;
	 * N.B. tlock is acquired on ipimap not ip;
	 */
	if ((ditlck =
	     FUNC18(tid, ipimap, mp, tlckINODE | tlckENTRY)) == NULL)
		goto retry;
	dilinelock = (struct linelock *) & ditlck->lock;

	/*
	 * copy btree root from in-memory inode to on-disk inode
	 *
	 * (tlock is taken from inline B+-tree root in in-memory
	 * inode when the B+-tree root is updated, which is pointed
	 * by jfs_ip->blid as well as being on tx tlock list)
	 *
	 * further processing of btree root is based on the copy
	 * in in-memory inode, where txLog() will log from, and,
	 * for xtree root, txUpdateMap() will update map and reset
	 * XAD_NEW bit;
	 */

	if (FUNC3(ip->i_mode) && (lid = jfs_ip->xtlid)) {
		/*
		 * This is the special xtree inside the directory for storing
		 * the directory table
		 */
		xtpage_t *p, *xp;
		xad_t *xad;

		jfs_ip->xtlid = 0;
		tlck = FUNC13(lid);
		FUNC6(tlck->type & tlckXTREE);
		tlck->type |= tlckBTROOT;
		tlck->mp = mp;
		ilinelock = (struct linelock *) & tlck->lock;

		/*
		 * copy xtree root from inode to dinode:
		 */
		p = &jfs_ip->i_xtroot;
		xp = (xtpage_t *) &dp->di_dirtable;
		lv = ilinelock->lv;
		for (n = 0; n < ilinelock->index; n++, lv++) {
			FUNC14(&xp->xad[lv->offset], &p->xad[lv->offset],
			       lv->length << L2XTSLOTSIZE);
		}

		/* reset on-disk (metadata page) xtree XAD_NEW bit */
		xad = &xp->xad[XTENTRYSTART];
		for (n = XTENTRYSTART;
		     n < FUNC11(xp->header.nextindex); n++, xad++)
			if (xad->flag & (XAD_NEW | XAD_EXTENDED))
				xad->flag &= ~(XAD_NEW | XAD_EXTENDED);
	}

	if ((lid = jfs_ip->blid) == 0)
		goto inlineData;
	jfs_ip->blid = 0;

	tlck = FUNC13(lid);
	type = tlck->type;
	tlck->type |= tlckBTROOT;
	tlck->mp = mp;
	ilinelock = (struct linelock *) & tlck->lock;

	/*
	 *	regular file: 16 byte (XAD slot) granularity
	 */
	if (type & tlckXTREE) {
		xtpage_t *p, *xp;
		xad_t *xad;

		/*
		 * copy xtree root from inode to dinode:
		 */
		p = &jfs_ip->i_xtroot;
		xp = &dp->di_xtroot;
		lv = ilinelock->lv;
		for (n = 0; n < ilinelock->index; n++, lv++) {
			FUNC14(&xp->xad[lv->offset], &p->xad[lv->offset],
			       lv->length << L2XTSLOTSIZE);
		}

		/* reset on-disk (metadata page) xtree XAD_NEW bit */
		xad = &xp->xad[XTENTRYSTART];
		for (n = XTENTRYSTART;
		     n < FUNC11(xp->header.nextindex); n++, xad++)
			if (xad->flag & (XAD_NEW | XAD_EXTENDED))
				xad->flag &= ~(XAD_NEW | XAD_EXTENDED);
	}
	/*
	 *	directory: 32 byte (directory entry slot) granularity
	 */
	else if (type & tlckDTREE) {
		dtpage_t *p, *xp;

		/*
		 * copy dtree root from inode to dinode:
		 */
		p = (dtpage_t *) &jfs_ip->i_dtroot;
		xp = (dtpage_t *) & dp->di_dtroot;
		lv = ilinelock->lv;
		for (n = 0; n < ilinelock->index; n++, lv++) {
			FUNC14(&xp->slot[lv->offset], &p->slot[lv->offset],
			       lv->length << L2DTSLOTSIZE);
		}
	} else {
		FUNC9("diWrite: UFO tlock");
	}

      inlineData:
	/*
	 * copy inline symlink from in-memory inode to on-disk inode
	 */
	if (FUNC4(ip->i_mode) && ip->i_size < IDATASIZE) {
		lv = & dilinelock->lv[dilinelock->index];
		lv->offset = (dioffset + 2 * 128) >> L2INODESLOTSIZE;
		lv->length = 2;
		FUNC14(&dp->di_fastsymlink, jfs_ip->i_inline, IDATASIZE);
		dilinelock->index++;
	}
	/*
	 * copy inline data from in-memory inode to on-disk inode:
	 * 128 byte slot granularity
	 */
	if (FUNC17(COMMIT_Inlineea, ip)) {
		lv = & dilinelock->lv[dilinelock->index];
		lv->offset = (dioffset + 3 * 128) >> L2INODESLOTSIZE;
		lv->length = 1;
		FUNC14(&dp->di_inlineea, jfs_ip->i_inline_ea, INODESLOTSIZE);
		dilinelock->index++;

		FUNC7(COMMIT_Inlineea, ip);
	}

	/*
	 *	lock/copy inode base: 128 byte slot granularity
	 */
	lv = & dilinelock->lv[dilinelock->index];
	lv->offset = dioffset >> L2INODESLOTSIZE;
	FUNC8(dp, ip);
	if (FUNC16(COMMIT_Dirtable, ip)) {
		lv->length = 2;
		FUNC14(&dp->di_dirtable, &jfs_ip->i_dirtable, 96);
	} else
		lv->length = 1;
	dilinelock->index++;

	/* release the buffer holding the updated on-disk inode.
	 * the buffer will be later written by commit processing.
	 */
	FUNC19(mp);

	return (rc);
}