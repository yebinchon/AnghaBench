#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ceph_osd_linger_request {int /*<<< orphan*/  osd; TYPE_1__* reg_req; TYPE_1__* ping_req; scalar_t__ is_watch; } ;
struct TYPE_2__ {scalar_t__ r_osd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ceph_osd_linger_request*) ; 

__attribute__((used)) static void FUNC4(struct ceph_osd_linger_request *lreq)
{
	if (lreq->is_watch && lreq->ping_req->r_osd)
		FUNC1(lreq->ping_req);
	if (lreq->reg_req->r_osd)
		FUNC1(lreq->reg_req);
	FUNC0(lreq);
	FUNC3(lreq->osd, lreq);
	FUNC2(lreq);
}