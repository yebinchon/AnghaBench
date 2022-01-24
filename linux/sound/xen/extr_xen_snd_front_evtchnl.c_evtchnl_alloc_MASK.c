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
struct xensnd_event_page {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend_id; } ;
struct xen_sndif_sring {int dummy; } ;
struct xen_snd_front_info {struct xenbus_device* xb_dev; } ;
struct TYPE_6__ {struct xensnd_event_page* page; } ;
struct TYPE_8__ {int /*<<< orphan*/ * sring; } ;
struct TYPE_5__ {TYPE_4__ ring; int /*<<< orphan*/  req_io_lock; int /*<<< orphan*/  completion; } ;
struct TYPE_7__ {TYPE_2__ evt; TYPE_1__ req; } ;
struct xen_snd_front_evtchnl {int type; int index; int gref; int irq; int /*<<< orphan*/  port; TYPE_3__ u; int /*<<< orphan*/  ring_io_lock; int /*<<< orphan*/  state; struct xen_snd_front_info* front_info; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
typedef  int grant_ref_t ;
typedef  enum xen_snd_front_evtchnl_type { ____Placeholder_xen_snd_front_evtchnl_type } xen_snd_front_evtchnl_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EVTCHNL_STATE_DISCONNECTED ; 
 int EVTCHNL_TYPE_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct xen_sndif_sring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GRANT_INVALID_REF ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC1 (struct xen_sndif_sring*) ; 
 int /*<<< orphan*/  XENSND_DRIVER_NAME ; 
 int /*<<< orphan*/  XENSND_FIELD_EVT_RING_REF ; 
 int /*<<< orphan*/  XENSND_FIELD_RING_REF ; 
 int /*<<< orphan*/  XEN_PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  evtchnl_interrupt_evt ; 
 int /*<<< orphan*/  evtchnl_interrupt_req ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct xen_snd_front_evtchnl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xen_snd_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int FUNC14 (struct xenbus_device*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct xenbus_device*,struct xen_sndif_sring*,int,int*) ; 

__attribute__((used)) static int FUNC16(struct xen_snd_front_info *front_info, int index,
			 struct xen_snd_front_evtchnl *channel,
			 enum xen_snd_front_evtchnl_type type)
{
	struct xenbus_device *xb_dev = front_info->xb_dev;
	unsigned long page;
	grant_ref_t gref;
	irq_handler_t handler;
	char *handler_name = NULL;
	int ret;

	FUNC10(channel, 0, sizeof(*channel));
	channel->type = type;
	channel->index = index;
	channel->front_info = front_info;
	channel->state = EVTCHNL_STATE_DISCONNECTED;
	channel->gref = GRANT_INVALID_REF;
	page = FUNC5(GFP_KERNEL);
	if (!page) {
		ret = -ENOMEM;
		goto fail;
	}

	handler_name = FUNC8(GFP_KERNEL, "%s-%s", XENSND_DRIVER_NAME,
				 type == EVTCHNL_TYPE_REQ ?
				 XENSND_FIELD_RING_REF :
				 XENSND_FIELD_EVT_RING_REF);
	if (!handler_name) {
		ret = -ENOMEM;
		goto fail;
	}

	FUNC11(&channel->ring_io_lock);

	if (type == EVTCHNL_TYPE_REQ) {
		struct xen_sndif_sring *sring = (struct xen_sndif_sring *)page;

		FUNC7(&channel->u.req.completion);
		FUNC11(&channel->u.req.req_io_lock);
		FUNC1(sring);
		FUNC0(&channel->u.req.ring, sring, XEN_PAGE_SIZE);

		ret = FUNC15(xb_dev, sring, 1, &gref);
		if (ret < 0) {
			channel->u.req.ring.sring = NULL;
			goto fail;
		}

		handler = evtchnl_interrupt_req;
	} else {
		ret = FUNC6(xb_dev->otherend_id,
						  FUNC13((void *)page), 0);
		if (ret < 0)
			goto fail;

		channel->u.evt.page = (struct xensnd_event_page *)page;
		gref = ret;
		handler = evtchnl_interrupt_evt;
	}

	channel->gref = gref;

	ret = FUNC14(xb_dev, &channel->port);
	if (ret < 0)
		goto fail;

	ret = FUNC2(channel->port);
	if (ret < 0) {
		FUNC3(&xb_dev->dev,
			"Failed to bind IRQ for domid %d port %d: %d\n",
			front_info->xb_dev->otherend_id, channel->port, ret);
		goto fail;
	}

	channel->irq = ret;

	ret = FUNC12(channel->irq, NULL, handler,
				   IRQF_ONESHOT, handler_name, channel);
	if (ret < 0) {
		FUNC3(&xb_dev->dev, "Failed to request IRQ %d: %d\n",
			channel->irq, ret);
		goto fail;
	}

	FUNC9(handler_name);
	return 0;

fail:
	if (page)
		FUNC4(page);
	FUNC9(handler_name);
	FUNC3(&xb_dev->dev, "Failed to allocate ring: %d\n", ret);
	return ret;
}