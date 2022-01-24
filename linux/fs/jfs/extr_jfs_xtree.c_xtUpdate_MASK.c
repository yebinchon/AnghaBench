#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {void* nextindex; void* maxentry; int flag; int /*<<< orphan*/  next; } ;
struct TYPE_19__ {TYPE_1__ header; TYPE_4__* xad; } ;
typedef  TYPE_3__ xtpage_t ;
struct TYPE_20__ {int flag; } ;
typedef  TYPE_4__ xad_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct xtsplit {int index; int flag; int len; int /*<<< orphan*/ * pxdlist; scalar_t__ addr; scalar_t__ off; struct metapage* mp; } ;
struct TYPE_18__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct metapage {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btstack {int /*<<< orphan*/  top; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BT_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (struct metapage*,struct inode*) ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int EIO ; 
 int L2XTSLOTSIZE ; 
 int MAXXLEN ; 
 int /*<<< orphan*/  PSIZE ; 
 int XAD_EXTENDED ; 
 int XAD_NEW ; 
 int XAD_NOTRECORDED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 
 int XTENTRYSTART ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__,struct metapage*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,scalar_t__,struct metapage*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  XT_INSERT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (void*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_4__*,int) ; 
 int FUNC16 (int,int) ; 
 scalar_t__ FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct inode*) ; 
 int tlckGROW ; 
 int tlckXTREE ; 
 struct tlock* FUNC19 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 int FUNC20 (struct inode*,scalar_t__,int /*<<< orphan*/ *,int*,struct btstack*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,struct inode*,struct xtsplit*,struct btstack*) ; 

int FUNC22(tid_t tid, struct inode *ip, xad_t * nxad)
{				/* new XAD */
	int rc = 0;
	int cmp;
	struct metapage *mp;	/* meta-page buffer */
	xtpage_t *p;		/* base B+-tree index page */
	s64 bn;
	int index0, index, newindex, nextindex;
	struct btstack btstack;	/* traverse stack */
	struct xtsplit split;	/* split information */
	xad_t *xad, *lxad, *rxad;
	int xflag;
	s64 nxoff, xoff;
	int nxlen, xlen, lxlen, rxlen;
	s64 nxaddr, xaddr;
	struct tlock *tlck;
	struct xtlock *xtlck = NULL;
	int newpage = 0;

	/* there must exist extent to be tailgated */
	nxoff = FUNC17(nxad);
	nxlen = FUNC14(nxad);
	nxaddr = FUNC9(nxad);

	if ((rc = FUNC20(ip, nxoff, NULL, &cmp, &btstack, XT_INSERT)))
		return rc;

	/* retrieve search result */
	FUNC6(ip, btstack.top, bn, mp, p, index0);

	if (cmp != 0) {
		FUNC8(mp);
		FUNC11(ip->i_sb, "Could not find extent\n");
		return -EIO;
	}

	FUNC1(mp, ip);
	/*
	 * acquire tlock of the leaf page containing original entry
	 */
	if (!FUNC18(COMMIT_Nolink, ip)) {
		tlck = FUNC19(tid, ip, mp, tlckXTREE | tlckGROW);
		xtlck = (struct xtlock *) & tlck->lock;
	}

	xad = &p->xad[index0];
	xflag = xad->flag;
	xoff = FUNC17(xad);
	xlen = FUNC14(xad);
	xaddr = FUNC9(xad);

	/* nXAD must be completely contained within XAD */
	if ((xoff > nxoff) ||
	    (nxoff + nxlen > xoff + xlen)) {
		FUNC8(mp);
		FUNC11(ip->i_sb,
			  "nXAD in not completely contained within XAD\n");
		return -EIO;
	}

	index = index0;
	newindex = index + 1;
	nextindex = FUNC12(p->header.nextindex);

#ifdef  _JFS_WIP_NOCOALESCE
	if (xoff < nxoff)
		goto updateRight;

	/*
	 * replace XAD with nXAD
	 */
      replace:			/* (nxoff == xoff) */
	if (nxlen == xlen) {
		/* replace XAD with nXAD:recorded */
		*xad = *nxad;
		xad->flag = xflag & ~XAD_NOTRECORDED;

		goto out;
	} else			/* (nxlen < xlen) */
		goto updateLeft;
#endif				/* _JFS_WIP_NOCOALESCE */

/* #ifdef _JFS_WIP_COALESCE */
	if (xoff < nxoff)
		goto coalesceRight;

	/*
	 * coalesce with left XAD
	 */
//coalesceLeft: /* (xoff == nxoff) */
	/* is XAD first entry of page ? */
	if (index == XTENTRYSTART)
		goto replace;

	/* is nXAD logically and physically contiguous with lXAD ? */
	lxad = &p->xad[index - 1];
	lxlen = FUNC14(lxad);
	if (!(lxad->flag & XAD_NOTRECORDED) &&
	    (nxoff == FUNC17(lxad) + lxlen) &&
	    (nxaddr == FUNC9(lxad) + lxlen) &&
	    (lxlen + nxlen < MAXXLEN)) {
		/* extend right lXAD */
		index0 = index - 1;
		FUNC3(lxad, lxlen + nxlen);

		/* If we just merged two extents together, need to make sure the
		 * right extent gets logged.  If the left one is marked XAD_NEW,
		 * then we know it will be logged.  Otherwise, mark as
		 * XAD_EXTENDED
		 */
		if (!(lxad->flag & XAD_NEW))
			lxad->flag |= XAD_EXTENDED;

		if (xlen > nxlen) {
			/* truncate XAD */
			FUNC4(xad, xoff + nxlen);
			FUNC3(xad, xlen - nxlen);
			FUNC2(xad, xaddr + nxlen);
			goto out;
		} else {	/* (xlen == nxlen) */

			/* remove XAD */
			if (index < nextindex - 1)
				FUNC15(&p->xad[index], &p->xad[index + 1],
					(nextindex - index -
					 1) << L2XTSLOTSIZE);

			p->header.nextindex =
			    FUNC10(FUNC12(p->header.nextindex) -
					1);

			index = index0;
			newindex = index + 1;
			nextindex = FUNC12(p->header.nextindex);
			xoff = nxoff = FUNC17(lxad);
			xlen = nxlen = lxlen + nxlen;
			xaddr = nxaddr = FUNC9(lxad);
			goto coalesceRight;
		}
	}

	/*
	 * replace XAD with nXAD
	 */
      replace:			/* (nxoff == xoff) */
	if (nxlen == xlen) {
		/* replace XAD with nXAD:recorded */
		*xad = *nxad;
		xad->flag = xflag & ~XAD_NOTRECORDED;

		goto coalesceRight;
	} else			/* (nxlen < xlen) */
		goto updateLeft;

	/*
	 * coalesce with right XAD
	 */
      coalesceRight:		/* (xoff <= nxoff) */
	/* is XAD last entry of page ? */
	if (newindex == nextindex) {
		if (xoff == nxoff)
			goto out;
		goto updateRight;
	}

	/* is nXAD logically and physically contiguous with rXAD ? */
	rxad = &p->xad[index + 1];
	rxlen = FUNC14(rxad);
	if (!(rxad->flag & XAD_NOTRECORDED) &&
	    (nxoff + nxlen == FUNC17(rxad)) &&
	    (nxaddr + nxlen == FUNC9(rxad)) &&
	    (rxlen + nxlen < MAXXLEN)) {
		/* extend left rXAD */
		FUNC4(rxad, nxoff);
		FUNC3(rxad, rxlen + nxlen);
		FUNC2(rxad, nxaddr);

		/* If we just merged two extents together, need to make sure
		 * the left extent gets logged.  If the right one is marked
		 * XAD_NEW, then we know it will be logged.  Otherwise, mark as
		 * XAD_EXTENDED
		 */
		if (!(rxad->flag & XAD_NEW))
			rxad->flag |= XAD_EXTENDED;

		if (xlen > nxlen)
			/* truncate XAD */
			FUNC3(xad, xlen - nxlen);
		else {		/* (xlen == nxlen) */

			/* remove XAD */
			FUNC15(&p->xad[index], &p->xad[index + 1],
				(nextindex - index - 1) << L2XTSLOTSIZE);

			p->header.nextindex =
			    FUNC10(FUNC12(p->header.nextindex) -
					1);
		}

		goto out;
	} else if (xoff == nxoff)
		goto out;

	if (xoff >= nxoff) {
		FUNC8(mp);
		FUNC11(ip->i_sb, "xoff >= nxoff\n");
		return -EIO;
	}
/* #endif _JFS_WIP_COALESCE */

	/*
	 * split XAD into (lXAD, nXAD):
	 *
	 *          |---nXAD--->
	 * --|----------XAD----------|--
	 *   |-lXAD-|
	 */
      updateRight:		/* (xoff < nxoff) */
	/* truncate old XAD as lXAD:not_recorded */
	xad = &p->xad[index];
	FUNC3(xad, nxoff - xoff);

	/* insert nXAD:recorded */
	if (nextindex == FUNC12(p->header.maxentry)) {

		/* xtSpliUp() unpins leaf pages */
		split.mp = mp;
		split.index = newindex;
		split.flag = xflag & ~XAD_NOTRECORDED;
		split.off = nxoff;
		split.len = nxlen;
		split.addr = nxaddr;
		split.pxdlist = NULL;
		if ((rc = FUNC21(tid, ip, &split, &btstack)))
			return rc;

		/* get back old page */
		FUNC5(ip, bn, mp, PSIZE, p, rc);
		if (rc)
			return rc;
		/*
		 * if leaf root has been split, original root has been
		 * copied to new child page, i.e., original entry now
		 * resides on the new child page;
		 */
		if (p->header.flag & BT_INTERNAL) {
			FUNC0(p->header.nextindex ==
			       FUNC10(XTENTRYSTART + 1));
			xad = &p->xad[XTENTRYSTART];
			bn = FUNC9(xad);
			FUNC8(mp);

			/* get new child page */
			FUNC5(ip, bn, mp, PSIZE, p, rc);
			if (rc)
				return rc;

			FUNC1(mp, ip);
			if (!FUNC18(COMMIT_Nolink, ip)) {
				tlck = FUNC19(tid, ip, mp, tlckXTREE|tlckGROW);
				xtlck = (struct xtlock *) & tlck->lock;
			}
		} else {
			/* is nXAD on new page ? */
			if (newindex >
			    (FUNC12(p->header.maxentry) >> 1)) {
				newindex =
				    newindex -
				    FUNC12(p->header.nextindex) +
				    XTENTRYSTART;
				newpage = 1;
			}
		}
	} else {
		/* if insert into middle, shift right remaining entries */
		if (newindex < nextindex)
			FUNC15(&p->xad[newindex + 1], &p->xad[newindex],
				(nextindex - newindex) << L2XTSLOTSIZE);

		/* insert the entry */
		xad = &p->xad[newindex];
		*xad = *nxad;
		xad->flag = xflag & ~XAD_NOTRECORDED;

		/* advance next available entry index. */
		p->header.nextindex =
		    FUNC10(FUNC12(p->header.nextindex) + 1);
	}

	/*
	 * does nXAD force 3-way split ?
	 *
	 *          |---nXAD--->|
	 * --|----------XAD-------------|--
	 *   |-lXAD-|           |-rXAD -|
	 */
	if (nxoff + nxlen == xoff + xlen)
		goto out;

	/* reorient nXAD as XAD for further split XAD into (nXAD, rXAD) */
	if (newpage) {
		/* close out old page */
		if (!FUNC18(COMMIT_Nolink, ip)) {
			xtlck->lwm.offset = (xtlck->lwm.offset) ?
			    FUNC16(index0, (int)xtlck->lwm.offset) : index0;
			xtlck->lwm.length =
			    FUNC12(p->header.nextindex) -
			    xtlck->lwm.offset;
		}

		bn = FUNC13(p->header.next);
		FUNC8(mp);

		/* get new right page */
		FUNC5(ip, bn, mp, PSIZE, p, rc);
		if (rc)
			return rc;

		FUNC1(mp, ip);
		if (!FUNC18(COMMIT_Nolink, ip)) {
			tlck = FUNC19(tid, ip, mp, tlckXTREE | tlckGROW);
			xtlck = (struct xtlock *) & tlck->lock;
		}

		index0 = index = newindex;
	} else
		index++;

	newindex = index + 1;
	nextindex = FUNC12(p->header.nextindex);
	xlen = xlen - (nxoff - xoff);
	xoff = nxoff;
	xaddr = nxaddr;

	/* recompute split pages */
	if (nextindex == FUNC12(p->header.maxentry)) {
		FUNC8(mp);

		if ((rc = FUNC20(ip, nxoff, NULL, &cmp, &btstack, XT_INSERT)))
			return rc;

		/* retrieve search result */
		FUNC6(ip, btstack.top, bn, mp, p, index0);

		if (cmp != 0) {
			FUNC8(mp);
			FUNC11(ip->i_sb, "xtSearch failed\n");
			return -EIO;
		}

		if (index0 != index) {
			FUNC8(mp);
			FUNC11(ip->i_sb, "unexpected value of index\n");
			return -EIO;
		}
	}

	/*
	 * split XAD into (nXAD, rXAD)
	 *
	 *          ---nXAD---|
	 * --|----------XAD----------|--
	 *                    |-rXAD-|
	 */
      updateLeft:		/* (nxoff == xoff) && (nxlen < xlen) */
	/* update old XAD with nXAD:recorded */
	xad = &p->xad[index];
	*xad = *nxad;
	xad->flag = xflag & ~XAD_NOTRECORDED;

	/* insert rXAD:not_recorded */
	xoff = xoff + nxlen;
	xlen = xlen - nxlen;
	xaddr = xaddr + nxlen;
	if (nextindex == FUNC12(p->header.maxentry)) {
/*
printf("xtUpdate.updateLeft.split p:0x%p\n", p);
*/
		/* xtSpliUp() unpins leaf pages */
		split.mp = mp;
		split.index = newindex;
		split.flag = xflag;
		split.off = xoff;
		split.len = xlen;
		split.addr = xaddr;
		split.pxdlist = NULL;
		if ((rc = FUNC21(tid, ip, &split, &btstack)))
			return rc;

		/* get back old page */
		FUNC5(ip, bn, mp, PSIZE, p, rc);
		if (rc)
			return rc;

		/*
		 * if leaf root has been split, original root has been
		 * copied to new child page, i.e., original entry now
		 * resides on the new child page;
		 */
		if (p->header.flag & BT_INTERNAL) {
			FUNC0(p->header.nextindex ==
			       FUNC10(XTENTRYSTART + 1));
			xad = &p->xad[XTENTRYSTART];
			bn = FUNC9(xad);
			FUNC8(mp);

			/* get new child page */
			FUNC5(ip, bn, mp, PSIZE, p, rc);
			if (rc)
				return rc;

			FUNC1(mp, ip);
			if (!FUNC18(COMMIT_Nolink, ip)) {
				tlck = FUNC19(tid, ip, mp, tlckXTREE|tlckGROW);
				xtlck = (struct xtlock *) & tlck->lock;
			}
		}
	} else {
		/* if insert into middle, shift right remaining entries */
		if (newindex < nextindex)
			FUNC15(&p->xad[newindex + 1], &p->xad[newindex],
				(nextindex - newindex) << L2XTSLOTSIZE);

		/* insert the entry */
		xad = &p->xad[newindex];
		FUNC7(xad, xflag, xoff, xlen, xaddr);

		/* advance next available entry index. */
		p->header.nextindex =
		    FUNC10(FUNC12(p->header.nextindex) + 1);
	}

      out:
	if (!FUNC18(COMMIT_Nolink, ip)) {
		xtlck->lwm.offset = (xtlck->lwm.offset) ?
		    FUNC16(index0, (int)xtlck->lwm.offset) : index0;
		xtlck->lwm.length = FUNC12(p->header.nextindex) -
		    xtlck->lwm.offset;
	}

	/* unpin the leaf page */
	FUNC8(mp);

	return rc;
}