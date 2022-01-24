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
struct tc_action_ops {int dummy; } ;
struct tc_action_net {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tc_action_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simp_net_id ; 
 int FUNC1 (struct tc_action_net*,struct sk_buff*,struct netlink_callback*,int,struct tc_action_ops const*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct sk_buff *skb,
			   struct netlink_callback *cb, int type,
			   const struct tc_action_ops *ops,
			   struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC0(net, simp_net_id);

	return FUNC1(tn, skb, cb, type, ops, extack);
}