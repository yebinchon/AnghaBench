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
struct p9_req_t {int /*<<< orphan*/  req_list; } ;
struct p9_client {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct p9_client *client, struct p9_req_t *req)
{
	FUNC1(P9_DEBUG_TRANS, "client %p req %p\n", client, req);

	/* we haven't received a response for oldreq,
	 * remove it from the list.
	 */
	FUNC3(&client->lock);
	FUNC0(&req->req_list);
	FUNC4(&client->lock);
	FUNC2(req);

	return 0;
}