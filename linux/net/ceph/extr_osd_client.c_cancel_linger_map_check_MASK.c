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
struct ceph_osd_linger_request {int /*<<< orphan*/  linger_id; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int /*<<< orphan*/  linger_map_checks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_linger_request*) ; 
 struct ceph_osd_linger_request* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_client*) ; 

__attribute__((used)) static void FUNC5(struct ceph_osd_linger_request *lreq)
{
	struct ceph_osd_client *osdc = lreq->osdc;
	struct ceph_osd_linger_request *lookup_lreq;

	FUNC4(osdc);

	lookup_lreq = FUNC3(&osdc->linger_map_checks,
				       lreq->linger_id);
	if (!lookup_lreq)
		return;

	FUNC0(lookup_lreq != lreq);
	FUNC1(&osdc->linger_map_checks, lreq);
	FUNC2(lreq);
}