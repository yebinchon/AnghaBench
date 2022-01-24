#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct hsr_priv {int dummy; } ;
struct hsr_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HSR_A_IFINDEX ; 
 int /*<<< orphan*/  HSR_A_NODE_ADDR ; 
 int /*<<< orphan*/  HSR_C_RING_ERROR ; 
 int /*<<< orphan*/  HSR_PT_MASTER ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hsr_genl_family ; 
 struct hsr_port* FUNC4 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct hsr_priv *hsr, unsigned char addr[ETH_ALEN],
		      struct hsr_port *port)
{
	struct sk_buff *skb;
	void *msg_head;
	struct hsr_port *master;
	int res;

	skb = FUNC2(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (!skb)
		goto fail;

	msg_head = FUNC3(skb, 0, 0, &hsr_genl_family, 0,
			       HSR_C_RING_ERROR);
	if (!msg_head)
		goto nla_put_failure;

	res = FUNC7(skb, HSR_A_NODE_ADDR, ETH_ALEN, addr);
	if (res < 0)
		goto nla_put_failure;

	res = FUNC8(skb, HSR_A_IFINDEX, port->dev->ifindex);
	if (res < 0)
		goto nla_put_failure;

	FUNC0(skb, msg_head);
	FUNC1(&hsr_genl_family, skb, 0, 0, GFP_ATOMIC);

	return;

nla_put_failure:
	FUNC5(skb);

fail:
	FUNC9();
	master = FUNC4(hsr, HSR_PT_MASTER);
	FUNC6(master->dev, "Could not send HSR ring error message\n");
	FUNC10();
}