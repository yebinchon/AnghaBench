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
struct TYPE_2__ {int /*<<< orphan*/  xpt_flags; } ;
struct svcxprt_rdma {TYPE_1__ sc_xprt; int /*<<< orphan*/  sc_rw_ctxt_lock; int /*<<< orphan*/  sc_send_lock; int /*<<< orphan*/  sc_rq_dto_lock; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_send_wait; int /*<<< orphan*/  sc_rw_ctxts; int /*<<< orphan*/  sc_recv_ctxts; int /*<<< orphan*/  sc_send_ctxts; int /*<<< orphan*/  sc_read_complete_q; int /*<<< orphan*/  sc_rq_dto_q; int /*<<< orphan*/  sc_accept_q; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XPT_CONG_CTRL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct svcxprt_rdma* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_rdma_class ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ *,TYPE_1__*,struct svc_serv*) ; 

__attribute__((used)) static struct svcxprt_rdma *FUNC8(struct svc_serv *serv,
						 struct net *net)
{
	struct svcxprt_rdma *cma_xprt = FUNC4(sizeof *cma_xprt, GFP_KERNEL);

	if (!cma_xprt) {
		FUNC1("svcrdma: failed to create new transport\n");
		return NULL;
	}
	FUNC7(net, &svc_rdma_class, &cma_xprt->sc_xprt, serv);
	FUNC0(&cma_xprt->sc_accept_q);
	FUNC0(&cma_xprt->sc_rq_dto_q);
	FUNC0(&cma_xprt->sc_read_complete_q);
	FUNC0(&cma_xprt->sc_send_ctxts);
	FUNC2(&cma_xprt->sc_recv_ctxts);
	FUNC0(&cma_xprt->sc_rw_ctxts);
	FUNC3(&cma_xprt->sc_send_wait);

	FUNC6(&cma_xprt->sc_lock);
	FUNC6(&cma_xprt->sc_rq_dto_lock);
	FUNC6(&cma_xprt->sc_send_lock);
	FUNC6(&cma_xprt->sc_rw_ctxt_lock);

	/*
	 * Note that this implies that the underlying transport support
	 * has some form of congestion control (see RFC 7530 section 3.1
	 * paragraph 2). For now, we assume that all supported RDMA
	 * transports are suitable here.
	 */
	FUNC5(XPT_CONG_CTRL, &cma_xprt->sc_xprt.xpt_flags);

	return cma_xprt;
}