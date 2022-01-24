#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tpid; int /*<<< orphan*/  tci; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct sw_flow_key {TYPE_2__ eth; } ;
struct sk_buff {int dummy; } ;
struct ovs_action_push_vlan {int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  vlan_tpid; } ;

/* Variables and functions */
 int VLAN_CFI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sw_flow_key*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct sw_flow_key *key,
		     const struct ovs_action_push_vlan *vlan)
{
	if (FUNC3(skb)) {
		FUNC0(key);
	} else {
		key->eth.vlan.tci = vlan->vlan_tci;
		key->eth.vlan.tpid = vlan->vlan_tpid;
	}
	return FUNC2(skb, vlan->vlan_tpid,
			     FUNC1(vlan->vlan_tci) & ~VLAN_CFI_MASK);
}