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
struct xt_action_param {struct ebt_nat_info* targinfo; } ;
struct sk_buff {int /*<<< orphan*/  pkt_type; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ebt_nat_info {unsigned int target; int /*<<< orphan*/  mac; } ;
struct TYPE_6__ {TYPE_1__* br; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_dest; } ;
struct TYPE_4__ {struct net_device* dev; } ;

/* Variables and functions */
 unsigned int EBT_DROP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
#define  NF_BR_BROUTING 129 
#define  NF_BR_PRE_ROUTING 128 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  PACKET_MULTICAST ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 TYPE_3__* FUNC0 (struct net_device*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xt_action_param const*) ; 
 struct net_device* FUNC8 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC9(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct ebt_nat_info *info = par->targinfo;

	if (FUNC6(skb, ETH_ALEN))
		return EBT_DROP;

	FUNC2(FUNC1(skb)->h_dest, info->mac);

	if (FUNC5(info->mac)) {
		if (FUNC4(info->mac))
			skb->pkt_type = PACKET_BROADCAST;
		else
			skb->pkt_type = PACKET_MULTICAST;
	} else {
		const struct net_device *dev;

		switch (FUNC7(par)) {
		case NF_BR_BROUTING:
			dev = FUNC8(par);
			break;
		case NF_BR_PRE_ROUTING:
			dev = FUNC0(FUNC8(par))->br->dev;
			break;
		default:
			dev = NULL;
			break;
		}

		if (!dev) /* NF_BR_LOCAL_OUT */
			return info->target;

		if (FUNC3(info->mac, dev->dev_addr))
			skb->pkt_type = PACKET_HOST;
		else
			skb->pkt_type = PACKET_OTHERHOST;
	}

	return info->target;
}