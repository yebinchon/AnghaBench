#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flag; } ;
typedef  TYPE_1__ xad_t ;
typedef  int /*<<< orphan*/  ulong ;
struct xdlistlock {int count; TYPE_1__* xdlist; } ;
struct tblock {int dummy; } ;
struct pxd_lock {TYPE_1__ pxd; } ;
struct maplock {int flag; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  scalar_t__ s64 ;
typedef  TYPE_1__ pxd_t ;
struct TYPE_9__ {struct inode* ipbmap; } ;

/* Variables and functions */
 int COMMIT_PMAP ; 
 int COMMIT_PWMAP ; 
 int COMMIT_WMAP ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 int XAD_NEW ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int,scalar_t__,scalar_t__,struct tblock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int mlckFREEPXD ; 
 int mlckFREEXADLIST ; 

void FUNC8(struct inode *ip,
	       struct maplock * maplock, struct tblock * tblk, int maptype)
{
	struct inode *ipbmap = FUNC0(ip->i_sb)->ipbmap;
	struct xdlistlock *xadlistlock;
	xad_t *xad;
	s64 xaddr;
	int xlen;
	struct pxd_lock *pxdlock;
	struct xdlistlock *pxdlistlock;
	pxd_t *pxd;
	int n;

	FUNC5("txFreeMap: tblk:0x%p maplock:0x%p maptype:0x%x",
		 tblk, maplock, maptype);

	/*
	 * free from persistent map;
	 */
	if (maptype == COMMIT_PMAP || maptype == COMMIT_PWMAP) {
		if (maplock->flag & mlckFREEXADLIST) {
			xadlistlock = (struct xdlistlock *) maplock;
			xad = xadlistlock->xdlist;
			for (n = 0; n < xadlistlock->count; n++, xad++) {
				if (!(xad->flag & XAD_NEW)) {
					xaddr = FUNC2(xad);
					xlen = FUNC7(xad);
					FUNC4(ipbmap, true, xaddr,
						     (s64) xlen, tblk);
					FUNC5("freePMap: xaddr:0x%lx xlen:%d",
						 (ulong) xaddr, xlen);
				}
			}
		} else if (maplock->flag & mlckFREEPXD) {
			pxdlock = (struct pxd_lock *) maplock;
			xaddr = FUNC1(&pxdlock->pxd);
			xlen = FUNC6(&pxdlock->pxd);
			FUNC4(ipbmap, true, xaddr, (s64) xlen,
				     tblk);
			FUNC5("freePMap: xaddr:0x%lx xlen:%d",
				 (ulong) xaddr, xlen);
		} else {	/* (maplock->flag & mlckALLOCPXDLIST) */

			pxdlistlock = (struct xdlistlock *) maplock;
			pxd = pxdlistlock->xdlist;
			for (n = 0; n < pxdlistlock->count; n++, pxd++) {
				xaddr = FUNC1(pxd);
				xlen = FUNC6(pxd);
				FUNC4(ipbmap, true, xaddr,
					     (s64) xlen, tblk);
				FUNC5("freePMap: xaddr:0x%lx xlen:%d",
					 (ulong) xaddr, xlen);
			}
		}
	}

	/*
	 * free from working map;
	 */
	if (maptype == COMMIT_PWMAP || maptype == COMMIT_WMAP) {
		if (maplock->flag & mlckFREEXADLIST) {
			xadlistlock = (struct xdlistlock *) maplock;
			xad = xadlistlock->xdlist;
			for (n = 0; n < xadlistlock->count; n++, xad++) {
				xaddr = FUNC2(xad);
				xlen = FUNC7(xad);
				FUNC3(ip, xaddr, (s64) xlen);
				xad->flag = 0;
				FUNC5("freeWMap: xaddr:0x%lx xlen:%d",
					 (ulong) xaddr, xlen);
			}
		} else if (maplock->flag & mlckFREEPXD) {
			pxdlock = (struct pxd_lock *) maplock;
			xaddr = FUNC1(&pxdlock->pxd);
			xlen = FUNC6(&pxdlock->pxd);
			FUNC3(ip, xaddr, (s64) xlen);
			FUNC5("freeWMap: xaddr:0x%lx xlen:%d",
				 (ulong) xaddr, xlen);
		} else {	/* (maplock->flag & mlckFREEPXDLIST) */

			pxdlistlock = (struct xdlistlock *) maplock;
			pxd = pxdlistlock->xdlist;
			for (n = 0; n < pxdlistlock->count; n++, pxd++) {
				xaddr = FUNC1(pxd);
				xlen = FUNC6(pxd);
				FUNC3(ip, xaddr, (s64) xlen);
				FUNC5("freeWMap: xaddr:0x%lx xlen:%d",
					 (ulong) xaddr, xlen);
			}
		}
	}
}