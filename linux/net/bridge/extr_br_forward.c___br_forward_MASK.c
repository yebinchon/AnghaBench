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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; struct net_device* dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  NFPROTO_BRIDGE ; 
 int NF_BR_FORWARD ; 
 int NF_BR_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct net*,int /*<<< orphan*/ *,struct sk_buff*,struct net_device*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_forward_finish ; 
 struct sk_buff* FUNC1 (TYPE_1__*,struct net_bridge_port const*,struct net_bridge_vlan_group*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port const*,struct sk_buff*) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct net_bridge_vlan_group* FUNC6 (struct net_bridge_port const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const struct net_bridge_port *to,
			 struct sk_buff *skb, bool local_orig)
{
	struct net_bridge_vlan_group *vg;
	struct net_device *indev;
	struct net *net;
	int br_hook;

	vg = FUNC6(to);
	skb = FUNC1(to->br, to, vg, skb);
	if (!skb)
		return;

	indev = skb->dev;
	skb->dev = to->dev;
	if (!local_orig) {
		if (FUNC10(skb)) {
			FUNC5(skb);
			return;
		}
		br_hook = NF_BR_FORWARD;
		FUNC8(skb);
		net = FUNC3(indev);
	} else {
		if (FUNC11(FUNC7(to->br->dev))) {
			FUNC9(skb, ETH_HLEN);
			if (!FUNC4(skb->dev, skb))
				FUNC5(skb);
			else
				FUNC2(to, skb);
			return;
		}
		br_hook = NF_BR_LOCAL_OUT;
		net = FUNC3(skb->dev);
		indev = NULL;
	}

	FUNC0(NFPROTO_BRIDGE, br_hook,
		net, NULL, skb, indev, skb->dev,
		br_forward_finish);
}