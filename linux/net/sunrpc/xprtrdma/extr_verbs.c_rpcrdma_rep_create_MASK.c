#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rep_inline_recv; } ;
struct rpcrdma_xprt {TYPE_1__ rx_ep; } ;
struct TYPE_9__ {int num_sge; int /*<<< orphan*/ * sg_list; TYPE_2__* wr_cqe; int /*<<< orphan*/ * next; } ;
struct TYPE_8__ {int /*<<< orphan*/  done; } ;
struct rpcrdma_rep {int rr_temp; TYPE_3__ rr_recv_wr; TYPE_4__* rr_rdmabuf; TYPE_2__ rr_cqe; struct rpcrdma_xprt* rr_rxprt; int /*<<< orphan*/  rr_hdrbuf; } ;
struct TYPE_10__ {int /*<<< orphan*/  rg_iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rpcrdma_rep*) ; 
 struct rpcrdma_rep* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpcrdma_wc_receive ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpcrdma_rep *FUNC6(struct rpcrdma_xprt *r_xprt,
					      bool temp)
{
	struct rpcrdma_rep *rep;

	rep = FUNC1(sizeof(*rep), GFP_KERNEL);
	if (rep == NULL)
		goto out;

	rep->rr_rdmabuf = FUNC4(r_xprt->rx_ep.rep_inline_recv,
					       DMA_FROM_DEVICE, GFP_KERNEL);
	if (!rep->rr_rdmabuf)
		goto out_free;

	FUNC5(&rep->rr_hdrbuf, FUNC2(rep->rr_rdmabuf),
		     FUNC3(rep->rr_rdmabuf));
	rep->rr_cqe.done = rpcrdma_wc_receive;
	rep->rr_rxprt = r_xprt;
	rep->rr_recv_wr.next = NULL;
	rep->rr_recv_wr.wr_cqe = &rep->rr_cqe;
	rep->rr_recv_wr.sg_list = &rep->rr_rdmabuf->rg_iov;
	rep->rr_recv_wr.num_sge = 1;
	rep->rr_temp = temp;
	return rep;

out_free:
	FUNC0(rep);
out:
	return NULL;
}