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
struct ceph_osd_request {int /*<<< orphan*/  r_tid; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {TYPE_1__* client; int /*<<< orphan*/  map_checks; } ;
struct TYPE_2__ {int /*<<< orphan*/  monc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ceph_osd_request*) ; 
 struct ceph_osd_request* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_check_cb ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*) ; 

__attribute__((used)) static void FUNC6(struct ceph_osd_request *req)
{
	struct ceph_osd_client *osdc = req->r_osdc;
	struct ceph_osd_request *lookup_req;
	int ret;

	FUNC5(osdc);

	lookup_req = FUNC4(&osdc->map_checks, req->r_tid);
	if (lookup_req) {
		FUNC0(lookup_req != req);
		return;
	}

	FUNC2(req);
	FUNC3(&osdc->map_checks, req);
	ret = FUNC1(&osdc->client->monc, "osdmap",
					  map_check_cb, req->r_tid);
	FUNC0(ret);
}