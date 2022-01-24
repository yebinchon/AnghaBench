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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ceph_mon_generic_request {int /*<<< orphan*/  tid; TYPE_2__* request; int /*<<< orphan*/  private_data; int /*<<< orphan*/  complete_cb; void* reply; } ;
struct ceph_mon_client {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  ceph_monc_callback_t ;
struct TYPE_3__ {void* iov_base; } ;
struct TYPE_4__ {int front_alloc_len; TYPE_1__ front; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MSG_MON_GET_VERSION ; 
 int /*<<< orphan*/  CEPH_MSG_MON_GET_VERSION_REPLY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ceph_mon_generic_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ceph_mon_generic_request* FUNC2 (struct ceph_mon_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void* const,char const*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_mon_generic_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mon_client*,struct ceph_mon_generic_request*) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static struct ceph_mon_generic_request *
FUNC12(struct ceph_mon_client *monc, const char *what,
			ceph_monc_callback_t cb, u64 private_data)
{
	struct ceph_mon_generic_request *req;

	req = FUNC2(monc, GFP_NOIO);
	if (!req)
		goto err_put_req;

	req->request = FUNC5(CEPH_MSG_MON_GET_VERSION,
				    sizeof(u64) + sizeof(u32) + FUNC11(what),
				    GFP_NOIO, true);
	if (!req->request)
		goto err_put_req;

	req->reply = FUNC5(CEPH_MSG_MON_GET_VERSION_REPLY, 32, GFP_NOIO,
				  true);
	if (!req->reply)
		goto err_put_req;

	req->complete_cb = cb;
	req->private_data = private_data;

	FUNC6(&monc->mutex);
	FUNC9(req);
	{
		void *p = req->request->front.iov_base;
		void *const end = p + req->request->front_alloc_len;

		FUNC3(&p, req->tid); /* handle */
		FUNC4(&p, end, what, FUNC11(what));
		FUNC1(p != end);
	}
	FUNC10(monc, req);
	FUNC7(&monc->mutex);

	return req;

err_put_req:
	FUNC8(req);
	return FUNC0(-ENOMEM);
}