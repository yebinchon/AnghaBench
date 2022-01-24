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
struct TYPE_2__ {int /*<<< orphan*/  tag; } ;
struct p9_req_t {int status; TYPE_1__ tc; int /*<<< orphan*/  wq; } ;
struct p9_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct p9_client *c, struct p9_req_t *req, int status)
{
	FUNC0(P9_DEBUG_MUX, " tag %d\n", req->tc.tag);

	/*
	 * This barrier is needed to make sure any change made to req before
	 * the status change is visible to another thread
	 */
	FUNC2();
	req->status = status;

	FUNC3(&req->wq);
	FUNC0(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
	FUNC1(req);
}