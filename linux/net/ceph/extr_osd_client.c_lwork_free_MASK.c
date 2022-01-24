#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct linger_work {int /*<<< orphan*/  pending_item; struct ceph_osd_linger_request* lreq; } ;
struct ceph_osd_linger_request {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct linger_work*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct linger_work *lwork)
{
	struct ceph_osd_linger_request *lreq = lwork->lreq;

	FUNC3(&lreq->lock);
	FUNC2(&lwork->pending_item);
	FUNC4(&lreq->lock);

	FUNC1(lreq);
	FUNC0(lwork);
}