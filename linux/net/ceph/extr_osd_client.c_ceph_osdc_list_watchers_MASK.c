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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct ceph_watch_item {int dummy; } ;
struct ceph_osd_request {TYPE_1__* r_ops; int /*<<< orphan*/  r_flags; int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_2__ {int outdata_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int /*<<< orphan*/  CEPH_OSD_OP_LIST_WATCHERS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct page**) ; 
 struct page** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC7 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC10 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int FUNC11 (void**,void* const,struct ceph_watch_item**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_watchers ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  response_data ; 

int FUNC15(struct ceph_osd_client *osdc,
			    struct ceph_object_id *oid,
			    struct ceph_object_locator *oloc,
			    struct ceph_watch_item **watchers,
			    u32 *num_watchers)
{
	struct ceph_osd_request *req;
	struct page **pages;
	int ret;

	req = FUNC7(osdc, NULL, 1, false, GFP_NOIO);
	if (!req)
		return -ENOMEM;

	FUNC3(&req->r_base_oid, oid);
	FUNC4(&req->r_base_oloc, oloc);
	req->r_flags = CEPH_OSD_FLAG_READ;

	pages = FUNC2(1, GFP_NOIO);
	if (FUNC0(pages)) {
		ret = FUNC1(pages);
		goto out_put_req;
	}

	FUNC13(req, 0, CEPH_OSD_OP_LIST_WATCHERS, 0);
	FUNC5(FUNC12(req, 0, list_watchers,
						 response_data),
				 pages, PAGE_SIZE, 0, false, true);

	ret = FUNC6(req, GFP_NOIO);
	if (ret)
		goto out_put_req;

	FUNC9(osdc, req, false);
	ret = FUNC10(osdc, req);
	if (ret >= 0) {
		void *p = FUNC14(pages[0]);
		void *const end = p + req->r_ops[0].outdata_len;

		ret = FUNC11(&p, end, watchers, num_watchers);
	}

out_put_req:
	FUNC8(req);
	return ret;
}