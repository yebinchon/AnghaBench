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
struct ceph_osd_request {scalar_t__ r_osd; struct ceph_osd_client* r_osdc; } ;
struct ceph_osd_client {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ceph_osd_request *req)
{
	struct ceph_osd_client *osdc = req->r_osdc;

	FUNC1(&osdc->lock);
	if (req->r_osd)
		FUNC0(req);
	FUNC2(&osdc->lock);
}