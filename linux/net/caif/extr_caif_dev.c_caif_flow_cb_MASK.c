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
struct sk_buff {int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; TYPE_2__* up; } ;
struct caif_device_entry {int xoff; void (* xoff_skb_dtor ) (struct sk_buff*) ;TYPE_1__ layer; int /*<<< orphan*/  flow_lock; struct sk_buff* xoff_skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ctrlcmd ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND ; 
 struct caif_device_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb)
{
	struct caif_device_entry *caifd;
	void (*dtor)(struct sk_buff *skb) = NULL;
	bool send_xoff;

	FUNC0(skb->dev == NULL);

	FUNC4();
	caifd = FUNC1(skb->dev);

	FUNC0(caifd == NULL);
	if (!caifd) {
		FUNC5();
		return;
	}

	FUNC2(caifd);
	FUNC5();

	FUNC6(&caifd->flow_lock);
	send_xoff = caifd->xoff;
	caifd->xoff = 0;
	dtor = caifd->xoff_skb_dtor;

	if (FUNC0(caifd->xoff_skb != skb))
		skb = NULL;

	caifd->xoff_skb = NULL;
	caifd->xoff_skb_dtor = NULL;

	FUNC7(&caifd->flow_lock);

	if (dtor && skb)
		dtor(skb);

	if (send_xoff)
		caifd->layer.up->
			ctrlcmd(caifd->layer.up,
				_CAIF_CTRLCMD_PHYIF_FLOW_ON_IND,
				caifd->layer.id);
	FUNC3(caifd);
}