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
struct sk_buff {int dummy; } ;
struct net_bridge_port {int /*<<< orphan*/  br; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_MCAST_DIR_TX ; 
 struct net_bridge_port* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_bridge_port*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct net_bridge_port*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge_port*,struct sk_buff*) ; 

__attribute__((used)) static struct net_bridge_port *FUNC5(
	struct net_bridge_port *prev, struct net_bridge_port *p,
	struct sk_buff *skb, bool local_orig)
{
	u8 igmp_type = FUNC2(skb);
	int err;

	if (!FUNC4(p, skb))
		return prev;

	if (!prev)
		goto out;

	err = FUNC3(prev, skb, local_orig);
	if (err)
		return FUNC0(err);
out:
	FUNC1(p->br, p, skb, igmp_type, BR_MCAST_DIR_TX);

	return p;
}