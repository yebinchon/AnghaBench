#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hw_param; } ;
struct xensnd_resp {scalar_t__ id; int operation; TYPE_2__ resp; int /*<<< orphan*/  status; } ;
struct xen_snd_front_info {TYPE_3__* xb_dev; } ;
struct TYPE_15__ {scalar_t__ rsp_cons; scalar_t__ req_prod_pvt; TYPE_4__* sring; } ;
struct TYPE_9__ {int /*<<< orphan*/  hw_param; } ;
struct TYPE_13__ {TYPE_7__ ring; int /*<<< orphan*/  completion; TYPE_1__ resp; int /*<<< orphan*/  resp_status; } ;
struct TYPE_14__ {TYPE_5__ req; } ;
struct xen_snd_front_evtchnl {scalar_t__ state; scalar_t__ evt_id; int /*<<< orphan*/  ring_io_lock; TYPE_6__ u; struct xen_snd_front_info* front_info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_12__ {scalar_t__ rsp_prod; scalar_t__ rsp_event; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 scalar_t__ EVTCHNL_STATE_CONNECTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int) ; 
 struct xensnd_resp* FUNC1 (TYPE_7__*,scalar_t__) ; 
#define  XENSND_OP_CLOSE 133 
#define  XENSND_OP_HW_PARAM_QUERY 132 
#define  XENSND_OP_OPEN 131 
#define  XENSND_OP_READ 130 
#define  XENSND_OP_TRIGGER 129 
#define  XENSND_OP_WRITE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct xen_snd_front_evtchnl *channel = dev_id;
	struct xen_snd_front_info *front_info = channel->front_info;
	struct xensnd_resp *resp;
	RING_IDX i, rp;

	if (FUNC7(channel->state != EVTCHNL_STATE_CONNECTED))
		return IRQ_HANDLED;

	FUNC4(&channel->ring_io_lock);

again:
	rp = channel->u.req.ring.sring->rsp_prod;
	/* Ensure we see queued responses up to rp. */
	FUNC6();

	/*
	 * Assume that the backend is trusted to always write sane values
	 * to the ring counters, so no overflow checks on frontend side
	 * are required.
	 */
	for (i = channel->u.req.ring.rsp_cons; i != rp; i++) {
		resp = FUNC1(&channel->u.req.ring, i);
		if (resp->id != channel->evt_id)
			continue;
		switch (resp->operation) {
		case XENSND_OP_OPEN:
			/* fall through */
		case XENSND_OP_CLOSE:
			/* fall through */
		case XENSND_OP_READ:
			/* fall through */
		case XENSND_OP_WRITE:
			/* fall through */
		case XENSND_OP_TRIGGER:
			channel->u.req.resp_status = resp->status;
			FUNC2(&channel->u.req.completion);
			break;
		case XENSND_OP_HW_PARAM_QUERY:
			channel->u.req.resp_status = resp->status;
			channel->u.req.resp.hw_param =
					resp->resp.hw_param;
			FUNC2(&channel->u.req.completion);
			break;

		default:
			FUNC3(&front_info->xb_dev->dev,
				"Operation %d is not supported\n",
				resp->operation);
			break;
		}
	}

	channel->u.req.ring.rsp_cons = i;
	if (i != channel->u.req.ring.req_prod_pvt) {
		int more_to_do;

		FUNC0(&channel->u.req.ring,
					       more_to_do);
		if (more_to_do)
			goto again;
	} else {
		channel->u.req.ring.sring->rsp_event = i + 1;
	}

	FUNC5(&channel->ring_io_lock);
	return IRQ_HANDLED;
}