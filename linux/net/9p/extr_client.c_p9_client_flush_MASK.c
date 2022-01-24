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
struct p9_req_t {scalar_t__ status; int /*<<< orphan*/  tc; } ;
struct p9_client {TYPE_1__* trans_mod; } ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* cancelled ) (struct p9_client*,struct p9_req_t*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TFLUSH ; 
 int FUNC1 (struct p9_req_t*) ; 
 scalar_t__ REQ_STATUS_SENT ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,struct p9_req_t*) ; 

__attribute__((used)) static int FUNC7(struct p9_client *c, struct p9_req_t *oldreq)
{
	struct p9_req_t *req;
	int16_t oldtag;
	int err;

	err = FUNC4(&oldreq->tc, NULL, NULL, &oldtag, 1);
	if (err)
		return err;

	FUNC3(P9_DEBUG_9P, ">>> TFLUSH tag %d\n", oldtag);

	req = FUNC2(c, P9_TFLUSH, "w", oldtag);
	if (FUNC0(req))
		return FUNC1(req);

	/*
	 * if we haven't received a response for oldreq,
	 * remove it from the list
	 */
	if (oldreq->status == REQ_STATUS_SENT) {
		if (c->trans_mod->cancelled)
			c->trans_mod->cancelled(c, oldreq);
	}

	FUNC5(c, req);
	return 0;
}