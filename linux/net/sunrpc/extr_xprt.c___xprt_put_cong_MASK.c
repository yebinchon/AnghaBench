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
struct rpc_xprt {int /*<<< orphan*/  cong; } ;
struct rpc_rqst {scalar_t__ rq_cong; } ;

/* Variables and functions */
 scalar_t__ RPC_CWNDSCALE ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_xprt*) ; 

__attribute__((used)) static void
FUNC2(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
	if (!req->rq_cong)
		return;
	req->rq_cong = 0;
	xprt->cong -= RPC_CWNDSCALE;
	FUNC1(xprt);
	FUNC0(xprt);
}