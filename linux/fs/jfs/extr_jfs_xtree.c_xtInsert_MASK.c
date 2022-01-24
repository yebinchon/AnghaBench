#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nextindex; int /*<<< orphan*/  maxentry; } ;
struct TYPE_7__ {TYPE_1__ header; int /*<<< orphan*/ * xad; } ;
typedef  TYPE_3__ xtpage_t ;
typedef  int /*<<< orphan*/  xad_t ;
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  tid_t ;
struct xtsplit {int index; int flag; int /*<<< orphan*/ * pxdlist; scalar_t__ addr; scalar_t__ len; scalar_t__ off; struct metapage* mp; } ;
struct TYPE_6__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct btstack {int /*<<< orphan*/  top; } ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*,struct inode*) ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int EEXIST ; 
 int XAD_NEW ; 
 int XTENTRYSTART ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,scalar_t__,struct metapage*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  XT_INSERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct metapage*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct inode*) ; 
 int tlckGROW ; 
 int tlckXTREE ; 
 struct tlock* FUNC16 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 int FUNC17 (struct inode*,scalar_t__,scalar_t__*,int*,struct btstack*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct inode*,struct xtsplit*,struct btstack*) ; 

int FUNC19(tid_t tid,		/* transaction id */
	     struct inode *ip, int xflag, s64 xoff, s32 xlen, s64 * xaddrp,
	     int flag)
{
	int rc = 0;
	s64 xaddr, hint;
	struct metapage *mp;	/* meta-page buffer */
	xtpage_t *p;		/* base B+-tree index page */
	s64 bn;
	int index, nextindex;
	struct btstack btstack;	/* traverse stack */
	struct xtsplit split;	/* split information */
	xad_t *xad;
	int cmp;
	s64 next;
	struct tlock *tlck;
	struct xtlock *xtlck;

	FUNC9("xtInsert: nxoff:0x%lx nxlen:0x%x", (ulong) xoff, xlen);

	/*
	 *	search for the entry location at which to insert:
	 *
	 * xtFastSearch() and xtSearch() both returns (leaf page
	 * pinned, index at which to insert).
	 * n.b. xtSearch() may return index of maxentry of
	 * the full page.
	 */
	if ((rc = FUNC17(ip, xoff, &next, &cmp, &btstack, XT_INSERT)))
		return rc;

	/* retrieve search result */
	FUNC1(ip, btstack.top, bn, mp, p, index);

	/* This test must follow XT_GETSEARCH since mp must be valid if
	 * we branch to out: */
	if ((cmp == 0) || (next && (xlen > next - xoff))) {
		rc = -EEXIST;
		goto out;
	}

	/*
	 * allocate data extent requested
	 *
	 * allocation hint: last xad
	 */
	if ((xaddr = *xaddrp) == 0) {
		if (index > XTENTRYSTART) {
			xad = &p->xad[index - 1];
			hint = FUNC4(xad) + FUNC12(xad) - 1;
		} else
			hint = 0;
		if ((rc = FUNC7(ip, xlen)))
			goto out;
		if ((rc = FUNC5(ip, hint, (s64) xlen, &xaddr))) {
			FUNC8(ip, xlen);
			goto out;
		}
	}

	/*
	 *	insert entry for new extent
	 */
	xflag |= XAD_NEW;

	/*
	 *	if the leaf page is full, split the page and
	 *	propagate up the router entry for the new page from split
	 *
	 * The xtSplitUp() will insert the entry and unpin the leaf page.
	 */
	nextindex = FUNC11(p->header.nextindex);
	if (nextindex == FUNC11(p->header.maxentry)) {
		split.mp = mp;
		split.index = index;
		split.flag = xflag;
		split.off = xoff;
		split.len = xlen;
		split.addr = xaddr;
		split.pxdlist = NULL;
		if ((rc = FUNC18(tid, ip, &split, &btstack))) {
			/* undo data extent allocation */
			if (*xaddrp == 0) {
				FUNC6(ip, xaddr, (s64) xlen);
				FUNC8(ip, xlen);
			}
			return rc;
		}

		*xaddrp = xaddr;
		return 0;
	}

	/*
	 *	insert the new entry into the leaf page
	 */
	/*
	 * acquire a transaction lock on the leaf page;
	 *
	 * action: xad insertion/extension;
	 */
	FUNC0(mp, ip);

	/* if insert into middle, shift right remaining entries. */
	if (index < nextindex)
		FUNC13(&p->xad[index + 1], &p->xad[index],
			(nextindex - index) * sizeof(xad_t));

	/* insert the new entry: mark the entry NEW */
	xad = &p->xad[index];
	FUNC2(xad, xflag, xoff, xlen, xaddr);

	/* advance next available entry index */
	FUNC10(&p->header.nextindex, 1);

	/* Don't log it if there are no links to the file */
	if (!FUNC15(COMMIT_Nolink, ip)) {
		tlck = FUNC16(tid, ip, mp, tlckXTREE | tlckGROW);
		xtlck = (struct xtlock *) & tlck->lock;
		xtlck->lwm.offset =
		    (xtlck->lwm.offset) ? FUNC14(index,
					      (int)xtlck->lwm.offset) : index;
		xtlck->lwm.length =
		    FUNC11(p->header.nextindex) - xtlck->lwm.offset;
	}

	*xaddrp = xaddr;

      out:
	/* unpin the leaf page */
	FUNC3(mp);

	return rc;
}