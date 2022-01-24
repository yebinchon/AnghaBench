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
struct TYPE_4__ {int tci; int /*<<< orphan*/  tpid; } ;
struct TYPE_3__ {TYPE_2__ cvlan; TYPE_2__ vlan; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_tci; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLAN_CFI_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct sw_flow_key *key)
{
	int res;

	if (FUNC2(skb)) {
		key->eth.vlan.tci = FUNC0(skb->vlan_tci) | FUNC0(VLAN_CFI_MASK);
		key->eth.vlan.tpid = skb->vlan_proto;
	} else {
		/* Parse outer vlan tag in the non-accelerated case. */
		res = FUNC1(skb, &key->eth.vlan, true);
		if (res <= 0)
			return res;
	}

	/* Parse inner vlan tag. */
	res = FUNC1(skb, &key->eth.cvlan, false);
	if (res <= 0)
		return res;

	return 0;
}