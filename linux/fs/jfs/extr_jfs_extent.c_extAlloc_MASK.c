#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flag; } ;
typedef  TYPE_1__ xad_t ;
struct jfs_sb_info {int l2nbperpage; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int s64 ;
struct TYPE_11__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_Synclist ; 
 int FUNC0 (struct inode*) ; 
 TYPE_9__* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int MAXXLEN ; 
 int XAD_NOTRECORDED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,int) ; 
 int FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int FUNC10 (struct inode*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct inode*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct inode*,int,int,int,int*,int /*<<< orphan*/ ) ; 

int
FUNC21(struct inode *ip, s64 xlen, s64 pno, xad_t * xp, bool abnr)
{
	struct jfs_sb_info *sbi = FUNC2(ip->i_sb);
	s64 nxlen, nxaddr, xoff, hint, xaddr = 0;
	int rc;
	int xflag;

	/* This blocks if we are low on resources */
	FUNC18(ip->i_sb);

	/* Avoid race with jfs_commit_inode() */
	FUNC14(&FUNC1(ip)->commit_mutex);

	/* validate extent length */
	if (xlen > MAXXLEN)
		xlen = MAXXLEN;

	/* get the page's starting extent offset */
	xoff = pno << sbi->l2nbperpage;

	/* check if an allocation hint was provided */
	if ((hint = FUNC6(xp))) {
		/* get the size of the extent described by the hint */
		nxlen = FUNC12(xp);

		/* check if the hint is for the portion of the file
		 * immediately previous to the current allocation
		 * request and if hint extent has the same abnr
		 * value as the current request.  if so, we can
		 * extend the hint extent to include the current
		 * extent if we can allocate the blocks immediately
		 * following the hint extent.
		 */
		if (FUNC16(xp) + nxlen == xoff &&
		    abnr == ((xp->flag & XAD_NOTRECORDED) ? true : false))
			xaddr = hint + nxlen;

		/* adjust the hint to the last block of the extent */
		hint += (nxlen - 1);
	}

	/* allocate the disk blocks for the extent.  initially, extBalloc()
	 * will try to allocate disk blocks for the requested size (xlen).
	 * if this fails (xlen contiguous free blocks not available), it'll
	 * try to allocate a smaller number of blocks (producing a smaller
	 * extent), with this smaller number of blocks consisting of the
	 * requested number of blocks rounded down to the next smaller
	 * power of 2 number (i.e. 16 -> 8).  it'll continue to round down
	 * and retry the allocation until the number of blocks to allocate
	 * is smaller than the number of blocks per page.
	 */
	nxlen = xlen;
	if ((rc = FUNC10(ip, hint ? hint : FUNC0(ip), &nxlen, &nxaddr))) {
		FUNC15(&FUNC1(ip)->commit_mutex);
		return (rc);
	}

	/* Allocate blocks to quota. */
	rc = FUNC8(ip, nxlen);
	if (rc) {
		FUNC7(ip, nxaddr, (s64) nxlen);
		FUNC15(&FUNC1(ip)->commit_mutex);
		return rc;
	}

	/* determine the value of the extent flag */
	xflag = abnr ? XAD_NOTRECORDED : 0;

	/* if we can extend the hint extent to cover the current request,
	 * extend it.  otherwise, insert a new extent to
	 * cover the current request.
	 */
	if (xaddr && xaddr == nxaddr)
		rc = FUNC19(0, ip, xoff, (int) nxlen, 0);
	else
		rc = FUNC20(0, ip, xflag, xoff, (int) nxlen, &nxaddr, 0);

	/* if the extend or insert failed,
	 * free the newly allocated blocks and return the error.
	 */
	if (rc) {
		FUNC7(ip, nxaddr, nxlen);
		FUNC9(ip, nxlen);
		FUNC15(&FUNC1(ip)->commit_mutex);
		return (rc);
	}

	/* set the results of the extent allocation */
	FUNC3(xp, nxaddr);
	FUNC4(xp, nxlen);
	FUNC5(xp, xoff);
	xp->flag = xflag;

	FUNC13(ip);

	FUNC15(&FUNC1(ip)->commit_mutex);
	/*
	 * COMMIT_SyncList flags an anonymous tlock on page that is on
	 * sync list.
	 * We need to commit the inode to get the page written disk.
	 */
	if (FUNC17(COMMIT_Synclist,ip))
		FUNC11(ip, 0);

	return (0);
}