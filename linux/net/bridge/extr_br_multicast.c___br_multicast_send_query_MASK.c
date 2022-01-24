#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_bridge_port {int /*<<< orphan*/  dev; } ;
struct net_bridge {int dummy; } ;
struct br_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_MCAST_DIR_RX ; 
 int /*<<< orphan*/  BR_MCAST_DIR_TX ; 
 int /*<<< orphan*/  NFPROTO_BRIDGE ; 
 int /*<<< orphan*/  NF_BR_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_dev_queue_push_xmit ; 
 struct sk_buff* FUNC1 (struct net_bridge*,struct br_ip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct br_ip*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct net_bridge *br,
				      struct net_bridge_port *port,
				      struct br_ip *ip)
{
	struct sk_buff *skb;
	u8 igmp_type;

	skb = FUNC1(br, ip, &igmp_type);
	if (!skb)
		return;

	if (port) {
		skb->dev = port->dev;
		FUNC2(br, port, skb, igmp_type,
				   BR_MCAST_DIR_TX);
		FUNC0(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
			FUNC4(port->dev), NULL, skb, NULL, skb->dev,
			br_dev_queue_push_xmit);
	} else {
		FUNC3(br, ip, skb);
		FUNC2(br, port, skb, igmp_type,
				   BR_MCAST_DIR_RX);
		FUNC5(skb);
	}
}