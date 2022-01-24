#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tag; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
struct p9_req_t {TYPE_2__ rc; TYPE_2__ tc; TYPE_1__ refcount; int /*<<< orphan*/  req_list; int /*<<< orphan*/  wq; int /*<<< orphan*/  status; scalar_t__ t_err; } ;
struct p9_client {int /*<<< orphan*/  lock; int /*<<< orphan*/  reqs; int /*<<< orphan*/  msize; } ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct p9_req_t* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ P9_NOTAG ; 
 scalar_t__ P9_TVERSION ; 
 int /*<<< orphan*/  REQ_STATUS_ALLOC ; 
 int FUNC2 (int /*<<< orphan*/ *,struct p9_req_t*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct p9_req_t* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct p9_req_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (struct p9_client*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  p9_req_cache ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct p9_req_t *
FUNC15(struct p9_client *c, int8_t type, unsigned int max_size)
{
	struct p9_req_t *req = FUNC6(p9_req_cache, GFP_NOFS);
	int alloc_msize = FUNC8(c->msize, max_size);
	int tag;

	if (!req)
		return FUNC0(-ENOMEM);

	if (FUNC10(c, &req->tc, alloc_msize))
		goto free_req;
	if (FUNC10(c, &req->rc, alloc_msize))
		goto free;

	FUNC11(&req->tc);
	FUNC11(&req->rc);
	req->t_err = 0;
	req->status = REQ_STATUS_ALLOC;
	FUNC5(&req->wq);
	FUNC1(&req->req_list);

	FUNC3(GFP_NOFS);
	FUNC13(&c->lock);
	if (type == P9_TVERSION)
		tag = FUNC2(&c->reqs, req, P9_NOTAG, P9_NOTAG + 1,
				GFP_NOWAIT);
	else
		tag = FUNC2(&c->reqs, req, 0, P9_NOTAG, GFP_NOWAIT);
	req->tc.tag = tag;
	FUNC14(&c->lock);
	FUNC4();
	if (tag < 0)
		goto free;

	/* Init ref to two because in the general case there is one ref
	 * that is put asynchronously by a writer thread, one ref
	 * temporarily given by p9_tag_lookup and put by p9_client_cb
	 * in the recv thread, and one ref put by p9_tag_remove in the
	 * main thread. The only exception is virtio that does not use
	 * p9_tag_lookup but does not have a writer thread either
	 * (the write happens synchronously in the request/zc_request
	 * callback), so p9_client_cb eats the second ref there
	 * as the pointer is duplicated directly by virtqueue_add_sgs()
	 */
	FUNC12(&req->refcount.refcount, 2);

	return req;

free:
	FUNC9(&req->tc);
	FUNC9(&req->rc);
free_req:
	FUNC7(p9_req_cache, req);
	return FUNC0(-ENOMEM);
}