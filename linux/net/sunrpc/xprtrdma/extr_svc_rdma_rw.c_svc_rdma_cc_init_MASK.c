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
struct svcxprt_rdma {int /*<<< orphan*/  sc_xprt; } ;
struct svc_rdma_chunk_ctxt {scalar_t__ cc_sqecount; int /*<<< orphan*/  cc_rwctxts; struct svcxprt_rdma* cc_rdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct svcxprt_rdma *rdma,
			     struct svc_rdma_chunk_ctxt *cc)
{
	cc->cc_rdma = rdma;
	FUNC1(&rdma->sc_xprt);

	FUNC0(&cc->cc_rwctxts);
	cc->cc_sqecount = 0;
}