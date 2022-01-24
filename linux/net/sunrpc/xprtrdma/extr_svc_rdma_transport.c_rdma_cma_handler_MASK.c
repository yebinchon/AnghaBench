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
struct svc_xprt {int /*<<< orphan*/  xpt_flags; } ;
struct svcxprt_rdma {int /*<<< orphan*/  sc_flags; struct svc_xprt sc_xprt; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst_addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct rdma_cm_id {struct svcxprt_rdma* context; TYPE_2__ route; } ;
struct rdma_cm_event {int event; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMAXPRT_CONN_PENDING ; 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 130 
#define  RDMA_CM_EVENT_DISCONNECTED 129 
#define  RDMA_CM_EVENT_ESTABLISHED 128 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_cm_event*,struct sockaddr*) ; 

__attribute__((used)) static int FUNC8(struct rdma_cm_id *cma_id,
			    struct rdma_cm_event *event)
{
	struct sockaddr *sap = (struct sockaddr *)&cma_id->route.addr.dst_addr;
	struct svcxprt_rdma *rdma = cma_id->context;
	struct svc_xprt *xprt = &rdma->sc_xprt;

	FUNC7(event, sap);

	switch (event->event) {
	case RDMA_CM_EVENT_ESTABLISHED:
		/* Accept complete */
		FUNC5(xprt);
		FUNC1("svcrdma: Connection completed on DTO xprt=%p, "
			"cm_id=%p\n", xprt, cma_id);
		FUNC0(RDMAXPRT_CONN_PENDING, &rdma->sc_flags);
		FUNC4(xprt);
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
		FUNC1("svcrdma: Disconnect on DTO xprt=%p, cm_id=%p\n",
			xprt, cma_id);
		FUNC3(XPT_CLOSE, &xprt->xpt_flags);
		FUNC4(xprt);
		FUNC6(xprt);
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		FUNC1("svcrdma: Device removal cma_id=%p, xprt = %p, "
			"event = %s (%d)\n", cma_id, xprt,
			FUNC2(event->event), event->event);
		FUNC3(XPT_CLOSE, &xprt->xpt_flags);
		FUNC4(xprt);
		FUNC6(xprt);
		break;
	default:
		FUNC1("svcrdma: Unexpected event on DTO endpoint %p, "
			"event = %s (%d)\n", cma_id,
			FUNC2(event->event), event->event);
		break;
	}
	return 0;
}