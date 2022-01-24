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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  index; struct dsa_switch* ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_SJA1105 ; 
 int VLAN_PRIO_SHIFT ; 
 int FUNC0 (struct dsa_switch*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC3 (struct dsa_port*) ; 
 struct dsa_port* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sk_buff *skb,
				    struct net_device *netdev)
{
	struct dsa_port *dp = FUNC4(netdev);
	struct dsa_switch *ds = dp->ds;
	u16 tx_vid = FUNC0(ds, dp->index);
	u16 queue_mapping = FUNC7(skb);
	u8 pcp = FUNC5(netdev, queue_mapping);

	/* Transmitting management traffic does not rely upon switch tagging,
	 * but instead SPI-installed management routes. Part 2 of this
	 * is the .port_deferred_xmit driver callback.
	 */
	if (FUNC8(FUNC6(skb)))
		return FUNC2(skb, netdev);

	/* If we are under a vlan_filtering bridge, IP termination on
	 * switch ports based on 802.1Q tags is simply too brittle to
	 * be passable. So just defer to the dsa_slave_notag_xmit
	 * implementation.
	 */
	if (FUNC3(dp))
		return skb;

	return FUNC1(skb, netdev, ETH_P_SJA1105,
			     ((pcp << VLAN_PRIO_SHIFT) | tx_vid));
}