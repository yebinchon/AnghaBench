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
struct TYPE_4__ {scalar_t__ frag; } ;
struct sw_flow_key {TYPE_2__ ip; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct ovs_conntrack_info {scalar_t__ commit; TYPE_1__ zone; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ OVS_FRAG_TYPE_NONE ; 
 int FUNC0 (struct net*,struct sw_flow_key*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ; 
 int FUNC3 (struct net*,struct sw_flow_key*,struct ovs_conntrack_info const*,struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

int FUNC9(struct net *net, struct sk_buff *skb,
		   struct sw_flow_key *key,
		   const struct ovs_conntrack_info *info)
{
	int nh_ofs;
	int err;

	/* The conntrack module expects to be working at L3. */
	nh_ofs = FUNC5(skb);
	FUNC7(skb, nh_ofs);

	err = FUNC4(skb);
	if (err)
		return err;

	if (key->ip.frag != OVS_FRAG_TYPE_NONE) {
		err = FUNC0(net, key, info->zone.id, skb);
		if (err)
			return err;
	}

	if (info->commit)
		err = FUNC2(net, key, info, skb);
	else
		err = FUNC3(net, key, info, skb);

	FUNC8(skb, nh_ofs);
	FUNC6(skb, skb->data, nh_ofs);
	if (err)
		FUNC1(skb);
	return err;
}