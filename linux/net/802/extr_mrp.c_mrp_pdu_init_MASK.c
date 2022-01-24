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
struct sk_buff {int /*<<< orphan*/  protocol; TYPE_3__* dev; } ;
struct mrp_pdu_hdr {int /*<<< orphan*/  version; } ;
struct mrp_applicant {struct sk_buff* pdu; TYPE_2__* app; TYPE_3__* dev; } ;
struct TYPE_6__ {scalar_t__ mtu; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  version; TYPE_1__ pkttype; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 struct mrp_pdu_hdr* FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct mrp_applicant *app)
{
	struct sk_buff *skb;
	struct mrp_pdu_hdr *ph;

	skb = FUNC2(app->dev->mtu + FUNC0(app->dev),
			GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	skb->dev = app->dev;
	skb->protocol = app->app->pkttype.type;
	FUNC3(skb, FUNC0(app->dev));
	FUNC4(skb);
	FUNC5(skb);

	ph = FUNC1(skb, sizeof(*ph));
	ph->version = app->app->version;

	app->pdu = skb;
	return 0;
}