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
struct sk_buff {int /*<<< orphan*/  vlan_proto; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct brnf_net {scalar_t__ pass_vlan_indev; } ;

/* Variables and functions */
 int VLAN_VID_MASK ; 
 struct net_device* FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  brnf_net_id ; 
 struct brnf_net* FUNC2 (struct net const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static struct net_device *FUNC5(struct sk_buff *skb,
					       const struct net_device *dev,
					       const struct net *net)
{
	struct net_device *vlan, *br;
	struct brnf_net *brnet = FUNC2(net, brnf_net_id);

	br = FUNC1(dev);

	if (brnet->pass_vlan_indev == 0 || !FUNC4(skb))
		return br;

	vlan = FUNC0(br, skb->vlan_proto,
				    FUNC3(skb) & VLAN_VID_MASK);

	return vlan ? vlan : br;
}