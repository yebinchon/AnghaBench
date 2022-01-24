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
struct rpcrdma_ia {TYPE_2__* ri_id; } ;
struct TYPE_3__ {scalar_t__ send_cq; scalar_t__ recv_cq; } ;
struct rpcrdma_ep {TYPE_1__ rep_attr; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; struct rpcrdma_ep rx_ep; } ;
struct TYPE_4__ {int /*<<< orphan*/ * qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_ep*,struct rpcrdma_ia*) ; 

void FUNC3(struct rpcrdma_xprt *r_xprt)
{
	struct rpcrdma_ep *ep = &r_xprt->rx_ep;
	struct rpcrdma_ia *ia = &r_xprt->rx_ia;

	if (ia->ri_id && ia->ri_id->qp) {
		FUNC2(ep, ia);
		FUNC1(ia->ri_id);
		ia->ri_id->qp = NULL;
	}

	if (ep->rep_attr.recv_cq)
		FUNC0(ep->rep_attr.recv_cq);
	if (ep->rep_attr.send_cq)
		FUNC0(ep->rep_attr.send_cq);
}