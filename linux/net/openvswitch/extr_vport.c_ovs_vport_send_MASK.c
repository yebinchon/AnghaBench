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
typedef  int /*<<< orphan*/  u8 ;
struct vport {TYPE_2__* ops; TYPE_3__* dev; } ;
struct sk_buff {TYPE_3__* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_6__ {int mtu; int type; TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* send ) (struct sk_buff*) ;} ;

/* Variables and functions */
#define  ARPHRD_ETHER 129 
#define  ARPHRD_NONE 128 
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  MAC_PROTO_ETHERNET ; 
 int /*<<< orphan*/  MAC_PROTO_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct sk_buff*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct vport *vport, struct sk_buff *skb, u8 mac_proto)
{
	int mtu = vport->dev->mtu;

	switch (vport->dev->type) {
	case ARPHRD_NONE:
		if (mac_proto == MAC_PROTO_ETHERNET) {
			FUNC7(skb);
			FUNC6(skb);
			skb->protocol = FUNC1(ETH_P_TEB);
		} else if (mac_proto != MAC_PROTO_NONE) {
			FUNC0(1);
			goto drop;
		}
		break;
	case ARPHRD_ETHER:
		if (mac_proto != MAC_PROTO_ETHERNET)
			goto drop;
		break;
	default:
		goto drop;
	}

	if (FUNC9(FUNC4(skb, vport->dev) > mtu &&
		     !FUNC5(skb))) {
		FUNC3("%s: dropped over-mtu packet: %d > %d\n",
				     vport->dev->name,
				     FUNC4(skb, vport->dev), mtu);
		vport->dev->stats.tx_errors++;
		goto drop;
	}

	skb->dev = vport->dev;
	vport->ops->send(skb);
	return;

drop:
	FUNC2(skb);
}