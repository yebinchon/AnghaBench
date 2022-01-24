#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  osd; } ;
struct ceph_osd_linger_request {TYPE_8__ t; int /*<<< orphan*/  linger_id; TYPE_7__* reg_req; TYPE_4__* ping_req; scalar_t__ is_watch; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int /*<<< orphan*/  lock; } ;
struct ceph_osd {int dummy; } ;
struct TYPE_15__ {TYPE_6__* r_ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  cookie; } ;
struct TYPE_9__ {int /*<<< orphan*/  cookie; } ;
struct TYPE_14__ {TYPE_5__ notify; TYPE_1__ watch; } ;
struct TYPE_12__ {TYPE_3__* r_ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  cookie; } ;
struct TYPE_11__ {TYPE_2__ watch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_client*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd*,struct ceph_osd_linger_request*) ; 
 struct ceph_osd* FUNC4 (struct ceph_osd_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ceph_osd_linger_request *lreq)
{
	struct ceph_osd_client *osdc = lreq->osdc;
	struct ceph_osd *osd;

	FUNC1(&osdc->lock);
	FUNC2(lreq);
	if (lreq->is_watch) {
		lreq->reg_req->r_ops[0].watch.cookie = lreq->linger_id;
		lreq->ping_req->r_ops[0].watch.cookie = lreq->linger_id;
	} else {
		lreq->reg_req->r_ops[0].notify.cookie = lreq->linger_id;
	}

	FUNC0(osdc, &lreq->t, false);
	osd = FUNC4(osdc, lreq->t.osd, true);
	FUNC3(osd, lreq);

	FUNC5(lreq);
	FUNC6(&osdc->lock);
}