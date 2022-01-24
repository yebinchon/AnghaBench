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
struct ceph_osd_linger_request {int /*<<< orphan*/  linger_id; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {TYPE_1__* client; int /*<<< orphan*/  linger_map_checks; } ;
struct TYPE_2__ {int /*<<< orphan*/  monc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  linger_map_check_cb ; 
 struct ceph_osd_linger_request* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*) ; 

__attribute__((used)) static void FUNC6(struct ceph_osd_linger_request *lreq)
{
	struct ceph_osd_client *osdc = lreq->osdc;
	struct ceph_osd_linger_request *lookup_lreq;
	int ret;

	FUNC5(osdc);

	lookup_lreq = FUNC4(&osdc->linger_map_checks,
				       lreq->linger_id);
	if (lookup_lreq) {
		FUNC0(lookup_lreq != lreq);
		return;
	}

	FUNC3(lreq);
	FUNC2(&osdc->linger_map_checks, lreq);
	ret = FUNC1(&osdc->client->monc, "osdmap",
					  linger_map_check_cb, lreq->linger_id);
	FUNC0(ret);
}