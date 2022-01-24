#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct inode {int dummy; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
typedef  scalar_t__ s64 ;
struct TYPE_5__ {void* next; void* prev; } ;
struct TYPE_6__ {TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__,struct metapage*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct metapage*) ; 
 int /*<<< orphan*/  PSIZE ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct tlock*,struct inode*,struct metapage*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int tlckDTREE ; 
 int tlckRELINK ; 
 scalar_t__ FUNC6 (struct dt_lock*) ; 
 struct tlock* FUNC7 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 

__attribute__((used)) static int FUNC8(tid_t tid, struct inode *ip, dtpage_t * p)
{
	int rc;
	struct metapage *mp;
	s64 nextbn, prevbn;
	struct tlock *tlck;
	struct dt_lock *dtlck;
	struct lv *lv;

	nextbn = FUNC5(p->header.next);
	prevbn = FUNC5(p->header.prev);

	/* update prev pointer of the next page */
	if (nextbn != 0) {
		FUNC1(ip, nextbn, mp, PSIZE, p, rc);
		if (rc)
			return rc;

		FUNC0(mp, ip);
		/*
		 * acquire a transaction lock on the next page
		 *
		 * action: update prev pointer;
		 */
		tlck = FUNC7(tid, ip, mp, tlckDTREE | tlckRELINK);
		FUNC4("dtRelink nextbn: tlck = 0x%p, ip = 0x%p, mp=0x%p",
			tlck, ip, mp);
		dtlck = (struct dt_lock *) & tlck->lock;

		/* linelock header */
		if (dtlck->index >= dtlck->maxcnt)
			dtlck = (struct dt_lock *) FUNC6(dtlck);
		lv = & dtlck->lv[dtlck->index];
		lv->offset = 0;
		lv->length = 1;
		dtlck->index++;

		p->header.prev = FUNC3(prevbn);
		FUNC2(mp);
	}

	/* update next pointer of the previous page */
	if (prevbn != 0) {
		FUNC1(ip, prevbn, mp, PSIZE, p, rc);
		if (rc)
			return rc;

		FUNC0(mp, ip);
		/*
		 * acquire a transaction lock on the prev page
		 *
		 * action: update next pointer;
		 */
		tlck = FUNC7(tid, ip, mp, tlckDTREE | tlckRELINK);
		FUNC4("dtRelink prevbn: tlck = 0x%p, ip = 0x%p, mp=0x%p",
			tlck, ip, mp);
		dtlck = (struct dt_lock *) & tlck->lock;

		/* linelock header */
		if (dtlck->index >= dtlck->maxcnt)
			dtlck = (struct dt_lock *) FUNC6(dtlck);
		lv = & dtlck->lv[dtlck->index];
		lv->offset = 0;
		lv->length = 1;
		dtlck->index++;

		p->header.next = FUNC3(nextbn);
		FUNC2(mp);
	}

	return 0;
}