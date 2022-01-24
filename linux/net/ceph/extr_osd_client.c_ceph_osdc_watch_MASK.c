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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  base_oloc; int /*<<< orphan*/  base_oid; } ;
struct ceph_osd_linger_request {int is_watch; void* ping_req; void* reg_req; int /*<<< orphan*/  mtime; TYPE_1__ t; int /*<<< orphan*/  watch_valid_thru; void* data; int /*<<< orphan*/  errcb; int /*<<< orphan*/  wcb; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
typedef  int /*<<< orphan*/  rados_watcherrcb_t ;
typedef  int /*<<< orphan*/  rados_watchcb2_t ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int /*<<< orphan*/  CEPH_OSD_WATCH_OP_PING ; 
 int /*<<< orphan*/  CEPH_OSD_WATCH_OP_WATCH ; 
 int ENOMEM ; 
 struct ceph_osd_linger_request* FUNC0 (int) ; 
 void* FUNC1 (struct ceph_osd_linger_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ceph_osd_linger_request* FUNC5 (struct ceph_osd_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_osd_linger_request*) ; 
 int FUNC8 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_osd_linger_request*) ; 

struct ceph_osd_linger_request *
FUNC10(struct ceph_osd_client *osdc,
		struct ceph_object_id *oid,
		struct ceph_object_locator *oloc,
		rados_watchcb2_t wcb,
		rados_watcherrcb_t errcb,
		void *data)
{
	struct ceph_osd_linger_request *lreq;
	int ret;

	lreq = FUNC5(osdc);
	if (!lreq)
		return FUNC0(-ENOMEM);

	lreq->is_watch = true;
	lreq->wcb = wcb;
	lreq->errcb = errcb;
	lreq->data = data;
	lreq->watch_valid_thru = jiffies;

	FUNC2(&lreq->t.base_oid, oid);
	FUNC3(&lreq->t.base_oloc, oloc);
	lreq->t.flags = CEPH_OSD_FLAG_WRITE;
	FUNC4(&lreq->mtime);

	lreq->reg_req = FUNC1(lreq, CEPH_OSD_WATCH_OP_WATCH);
	if (!lreq->reg_req) {
		ret = -ENOMEM;
		goto err_put_lreq;
	}

	lreq->ping_req = FUNC1(lreq, CEPH_OSD_WATCH_OP_PING);
	if (!lreq->ping_req) {
		ret = -ENOMEM;
		goto err_put_lreq;
	}

	FUNC9(lreq);
	ret = FUNC8(lreq);
	if (ret) {
		FUNC6(lreq);
		goto err_put_lreq;
	}

	return lreq;

err_put_lreq:
	FUNC7(lreq);
	return FUNC0(ret);
}