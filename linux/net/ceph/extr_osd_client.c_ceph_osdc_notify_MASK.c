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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  base_oloc; int /*<<< orphan*/  base_oid; } ;
struct ceph_osd_linger_request {size_t* preply_len; int /*<<< orphan*/  reg_req; TYPE_1__ t; struct page*** preply_pages; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd_linger_request*) ; 
 struct page** FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ceph_osd_linger_request*,int) ; 
 struct ceph_osd_linger_request* FUNC10 (struct ceph_osd_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_osd_linger_request*) ; 
 int FUNC12 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct ceph_osd_linger_request*) ; 
 int FUNC14 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct ceph_osd_linger_request*) ; 
 int /*<<< orphan*/  notify ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  response_data ; 

int FUNC18(struct ceph_osd_client *osdc,
		     struct ceph_object_id *oid,
		     struct ceph_object_locator *oloc,
		     void *payload,
		     u32 payload_len,
		     u32 timeout,
		     struct page ***preply_pages,
		     size_t *preply_len)
{
	struct ceph_osd_linger_request *lreq;
	struct page **pages;
	int ret;

	FUNC2(!timeout);
	if (preply_pages) {
		*preply_pages = NULL;
		*preply_len = 0;
	}

	lreq = FUNC10(osdc);
	if (!lreq)
		return -ENOMEM;

	lreq->preply_pages = preply_pages;
	lreq->preply_len = preply_len;

	FUNC5(&lreq->t.base_oid, oid);
	FUNC6(&lreq->t.base_oloc, oloc);
	lreq->t.flags = CEPH_OSD_FLAG_READ;

	lreq->reg_req = FUNC3(lreq);
	if (!lreq->reg_req) {
		ret = -ENOMEM;
		goto out_put_lreq;
	}

	/*
	 * Pass 0 for cookie because we don't know it yet, it will be
	 * filled in by linger_submit().
	 */
	ret = FUNC17(lreq->reg_req, 0, 0, 1, timeout,
				     payload, payload_len);
	if (ret)
		goto out_put_lreq;

	/* for notify_id */
	pages = FUNC4(1, GFP_NOIO);
	if (FUNC0(pages)) {
		ret = FUNC1(pages);
		goto out_put_lreq;
	}
	FUNC7(FUNC16(lreq->reg_req, 0, notify,
						 response_data),
				 pages, PAGE_SIZE, 0, false, true);

	ret = FUNC8(lreq->reg_req, GFP_NOIO);
	if (ret)
		goto out_put_lreq;

	FUNC15(lreq);
	ret = FUNC14(lreq);
	if (!ret)
		ret = FUNC12(lreq);
	else
		FUNC9("lreq %p failed to initiate notify %d\n", lreq, ret);

	FUNC11(lreq);
out_put_lreq:
	FUNC13(lreq);
	return ret;
}