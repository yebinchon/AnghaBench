#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ceph_osd_request {int /*<<< orphan*/  r_mtime; int /*<<< orphan*/  r_flags; int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  base_oloc; int /*<<< orphan*/  base_oid; } ;
struct ceph_osd_linger_request {int /*<<< orphan*/  linger_id; TYPE_2__ t; } ;
struct ceph_osd_client {TYPE_1__* client; } ;
struct ceph_options {int /*<<< orphan*/  mount_timeout; } ;
struct TYPE_3__ {struct ceph_options* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int /*<<< orphan*/  CEPH_OSD_WATCH_OP_UNWATCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC3 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 

int FUNC11(struct ceph_osd_client *osdc,
		      struct ceph_osd_linger_request *lreq)
{
	struct ceph_options *opts = osdc->client->options;
	struct ceph_osd_request *req;
	int ret;

	req = FUNC3(osdc, NULL, 1, false, GFP_NOIO);
	if (!req)
		return -ENOMEM;

	FUNC0(&req->r_base_oid, &lreq->t.base_oid);
	FUNC1(&req->r_base_oloc, &lreq->t.base_oloc);
	req->r_flags = CEPH_OSD_FLAG_WRITE;
	FUNC6(&req->r_mtime);
	FUNC9(req, 0, lreq->linger_id,
			      CEPH_OSD_WATCH_OP_UNWATCH);

	ret = FUNC2(req, GFP_NOIO);
	if (ret)
		goto out_put_req;

	FUNC5(osdc, req, false);
	FUNC7(lreq);
	FUNC8(lreq);
	ret = FUNC10(req, opts->mount_timeout);

out_put_req:
	FUNC4(req);
	return ret;
}