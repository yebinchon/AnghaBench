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
struct p9_req_t {scalar_t__ status; int /*<<< orphan*/  req_list; } ;
struct p9_client {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 scalar_t__ REQ_STATUS_FLSHD ; 
 scalar_t__ REQ_STATUS_UNSENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct p9_client *client, struct p9_req_t *req)
{
	int ret = 1;

	FUNC1(P9_DEBUG_TRANS, "client %p req %p\n", client, req);

	FUNC3(&client->lock);

	if (req->status == REQ_STATUS_UNSENT) {
		FUNC0(&req->req_list);
		req->status = REQ_STATUS_FLSHD;
		FUNC2(req);
		ret = 0;
	}
	FUNC4(&client->lock);

	return ret;
}