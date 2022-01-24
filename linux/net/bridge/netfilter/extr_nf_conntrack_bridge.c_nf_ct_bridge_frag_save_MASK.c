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
struct sk_buff {int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_tci; } ;
struct nf_bridge_frag_data {int vlan_present; int /*<<< orphan*/  mac; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_tci; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb,
				   struct nf_bridge_frag_data *data)
{
	if (FUNC1(skb)) {
		data->vlan_present = true;
		data->vlan_tci = skb->vlan_tci;
		data->vlan_proto = skb->vlan_proto;
	} else {
		data->vlan_present = false;
	}
	FUNC0(skb, -ETH_HLEN, data->mac, ETH_HLEN);
}