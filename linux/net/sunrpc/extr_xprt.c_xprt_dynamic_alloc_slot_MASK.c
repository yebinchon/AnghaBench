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
struct rpc_xprt {scalar_t__ num_reqs; scalar_t__ max_reqs; int /*<<< orphan*/  reserve_lock; } ;
struct rpc_rqst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_rqst* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct rpc_rqst* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpc_rqst *FUNC4(struct rpc_xprt *xprt)
{
	struct rpc_rqst *req = FUNC0(-EAGAIN);

	if (xprt->num_reqs >= xprt->max_reqs)
		goto out;
	++xprt->num_reqs;
	FUNC3(&xprt->reserve_lock);
	req = FUNC1(sizeof(struct rpc_rqst), GFP_NOFS);
	FUNC2(&xprt->reserve_lock);
	if (req != NULL)
		goto out;
	--xprt->num_reqs;
	req = FUNC0(-ENOMEM);
out:
	return req;
}