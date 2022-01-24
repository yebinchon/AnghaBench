#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xen_snd_front_info {int /*<<< orphan*/  xb_dev; } ;
struct TYPE_5__ {scalar_t__ sring; } ;
struct TYPE_7__ {int /*<<< orphan*/  completion; int /*<<< orphan*/  resp_status; TYPE_1__ ring; } ;
struct TYPE_6__ {scalar_t__ page; } ;
struct TYPE_8__ {TYPE_3__ req; TYPE_2__ evt; } ;
struct xen_snd_front_evtchnl {scalar_t__ type; scalar_t__ gref; scalar_t__ port; scalar_t__ irq; TYPE_4__ u; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EVTCHNL_STATE_DISCONNECTED ; 
 scalar_t__ EVTCHNL_TYPE_EVT ; 
 scalar_t__ EVTCHNL_TYPE_REQ ; 
 scalar_t__ GRANT_INVALID_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_snd_front_evtchnl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct xen_snd_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct xen_snd_front_info *front_info,
			 struct xen_snd_front_evtchnl *channel)
{
	unsigned long page = 0;

	if (channel->type == EVTCHNL_TYPE_REQ)
		page = (unsigned long)channel->u.req.ring.sring;
	else if (channel->type == EVTCHNL_TYPE_EVT)
		page = (unsigned long)channel->u.evt.page;

	if (!page)
		return;

	channel->state = EVTCHNL_STATE_DISCONNECTED;
	if (channel->type == EVTCHNL_TYPE_REQ) {
		/* Release all who still waits for response if any. */
		channel->u.req.resp_status = -EIO;
		FUNC0(&channel->u.req.completion);
	}

	if (channel->irq)
		FUNC4(channel->irq, channel);

	if (channel->port)
		FUNC5(front_info->xb_dev, channel->port);

	/* End access and free the page. */
	if (channel->gref != GRANT_INVALID_REF)
		FUNC2(channel->gref, 0, page);
	else
		FUNC1(page);

	FUNC3(channel, 0, sizeof(*channel));
}