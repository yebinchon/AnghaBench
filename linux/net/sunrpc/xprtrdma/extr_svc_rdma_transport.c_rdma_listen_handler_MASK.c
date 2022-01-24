#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  src_addr; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct rdma_cm_id {int /*<<< orphan*/  context; TYPE_3__ route; } ;
struct TYPE_4__ {int /*<<< orphan*/  conn; } ;
struct rdma_cm_event {int event; TYPE_1__ param; } ;

/* Variables and functions */
#define  RDMA_CM_EVENT_CONNECT_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (char*,struct rdma_cm_id*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_cm_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_event*,struct sockaddr*) ; 

__attribute__((used)) static int FUNC4(struct rdma_cm_id *cma_id,
			       struct rdma_cm_event *event)
{
	struct sockaddr *sap = (struct sockaddr *)&cma_id->route.addr.src_addr;

	FUNC3(event, sap);

	switch (event->event) {
	case RDMA_CM_EVENT_CONNECT_REQUEST:
		FUNC0("svcrdma: Connect request on cma_id=%p, xprt = %p, "
			"event = %s (%d)\n", cma_id, cma_id->context,
			FUNC2(event->event), event->event);
		FUNC1(cma_id, &event->param.conn);
		break;
	default:
		/* NB: No device removal upcall for INADDR_ANY listeners */
		FUNC0("svcrdma: Unexpected event on listening endpoint %p, "
			"event = %s (%d)\n", cma_id,
			FUNC2(event->event), event->event);
		break;
	}

	return 0;
}