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
struct rpc_xprt {unsigned int max_reqs; unsigned int min_reqs; unsigned int num_reqs; int /*<<< orphan*/  free; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_list; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*,struct net*) ; 

struct rpc_xprt *FUNC4(struct net *net, size_t size,
		unsigned int num_prealloc,
		unsigned int max_alloc)
{
	struct rpc_xprt *xprt;
	struct rpc_rqst *req;
	int i;

	xprt = FUNC0(size, GFP_KERNEL);
	if (xprt == NULL)
		goto out;

	FUNC3(xprt, net);

	for (i = 0; i < num_prealloc; i++) {
		req = FUNC0(sizeof(struct rpc_rqst), GFP_KERNEL);
		if (!req)
			goto out_free;
		FUNC1(&req->rq_list, &xprt->free);
	}
	if (max_alloc > num_prealloc)
		xprt->max_reqs = max_alloc;
	else
		xprt->max_reqs = num_prealloc;
	xprt->min_reqs = num_prealloc;
	xprt->num_reqs = num_prealloc;

	return xprt;

out_free:
	FUNC2(xprt);
out:
	return NULL;
}