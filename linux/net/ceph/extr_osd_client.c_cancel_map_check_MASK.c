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
struct ceph_osd_request {int /*<<< orphan*/  r_tid; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {int /*<<< orphan*/  map_checks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ceph_osd_request*) ; 
 struct ceph_osd_request* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_client*) ; 

__attribute__((used)) static void FUNC5(struct ceph_osd_request *req)
{
	struct ceph_osd_client *osdc = req->r_osdc;
	struct ceph_osd_request *lookup_req;

	FUNC4(osdc);

	lookup_req = FUNC3(&osdc->map_checks, req->r_tid);
	if (!lookup_req)
		return;

	FUNC0(lookup_req != req);
	FUNC2(&osdc->map_checks, req);
	FUNC1(req);
}