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
struct page {int dummy; } ;
struct ceph_osd_request {unsigned int r_flags; TYPE_1__* r_ops; int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_2__ {int rval; size_t outdata_len; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC3 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC6 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int FUNC7 (struct ceph_osd_request*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_osd_request*,int /*<<< orphan*/ ,struct page**,size_t,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_osd_request*,int /*<<< orphan*/ ,struct page**,size_t,int /*<<< orphan*/ ,int,int) ; 

int FUNC10(struct ceph_osd_client *osdc,
		   struct ceph_object_id *oid,
		   struct ceph_object_locator *oloc,
		   const char *class, const char *method,
		   unsigned int flags,
		   struct page *req_page, size_t req_len,
		   struct page **resp_pages, size_t *resp_len)
{
	struct ceph_osd_request *req;
	int ret;

	if (req_len > PAGE_SIZE)
		return -E2BIG;

	req = FUNC3(osdc, NULL, 1, false, GFP_NOIO);
	if (!req)
		return -ENOMEM;

	FUNC0(&req->r_base_oid, oid);
	FUNC1(&req->r_base_oloc, oloc);
	req->r_flags = flags;

	ret = FUNC7(req, 0, class, method);
	if (ret)
		goto out_put_req;

	if (req_page)
		FUNC8(req, 0, &req_page, req_len,
						  0, false, false);
	if (resp_pages)
		FUNC9(req, 0, resp_pages,
						   *resp_len, 0, false, false);

	ret = FUNC2(req, GFP_NOIO);
	if (ret)
		goto out_put_req;

	FUNC5(osdc, req, false);
	ret = FUNC6(osdc, req);
	if (ret >= 0) {
		ret = req->r_ops[0].rval;
		if (resp_pages)
			*resp_len = req->r_ops[0].outdata_len;
	}

out_put_req:
	FUNC4(req);
	return ret;
}