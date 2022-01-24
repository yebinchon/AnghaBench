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
struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_send_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct svcxprt_rdma *rdma,
				struct svc_rdma_send_ctxt *ctxt,
				unsigned char *base,
				unsigned int len)
{
	return FUNC1(rdma, ctxt, FUNC2(base),
				     FUNC0(base), len);
}