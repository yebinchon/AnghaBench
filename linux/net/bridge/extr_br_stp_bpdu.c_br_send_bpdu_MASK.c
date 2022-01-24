#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/  priority; int /*<<< orphan*/  protocol; } ;
struct net_bridge_port {TYPE_2__* dev; TYPE_1__* br; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  group_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  LLC_PDU_CMD ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 scalar_t__ LLC_RESERVE ; 
 int /*<<< orphan*/  LLC_SAP_BSPAN ; 
 int /*<<< orphan*/  NFPROTO_BRIDGE ; 
 int /*<<< orphan*/  NF_BR_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned char const*,int) ; 
 int /*<<< orphan*/  br_send_bpdu_finish ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct net_bridge_port *p,
			 const unsigned char *data, int length)
{
	struct sk_buff *skb;

	skb = FUNC2(length+LLC_RESERVE);
	if (!skb)
		return;

	skb->dev = p->dev;
	skb->protocol = FUNC4(ETH_P_802_2);
	skb->priority = TC_PRIO_CONTROL;

	FUNC8(skb, LLC_RESERVE);
	FUNC1(skb, data, length);

	FUNC6(skb, LLC_PDU_TYPE_U, LLC_SAP_BSPAN,
			    LLC_SAP_BSPAN, LLC_PDU_CMD);
	FUNC7(skb);

	FUNC5(skb, p->dev->dev_addr, p->br->group_addr);

	FUNC9(skb);

	FUNC0(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
		FUNC3(p->dev), NULL, skb, NULL, skb->dev,
		br_send_bpdu_finish);
}