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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ceph_osd_request {int /*<<< orphan*/  r_flags; int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC3 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC6 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int FUNC7 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

int FUNC8(struct ceph_osd_client *osdc,
			 struct ceph_object_id *oid,
			 struct ceph_object_locator *oloc,
			 u64 notify_id,
			 u64 cookie,
			 void *payload,
			 u32 payload_len)
{
	struct ceph_osd_request *req;
	int ret;

	req = FUNC3(osdc, NULL, 1, false, GFP_NOIO);
	if (!req)
		return -ENOMEM;

	FUNC0(&req->r_base_oid, oid);
	FUNC1(&req->r_base_oloc, oloc);
	req->r_flags = CEPH_OSD_FLAG_READ;

	ret = FUNC7(req, 0, notify_id, cookie, payload,
					 payload_len);
	if (ret)
		goto out_put_req;

	ret = FUNC2(req, GFP_NOIO);
	if (ret)
		goto out_put_req;

	FUNC5(osdc, req, false);
	ret = FUNC6(osdc, req);

out_put_req:
	FUNC4(req);
	return ret;
}