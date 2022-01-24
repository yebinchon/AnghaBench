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
typedef  scalar_t__ u8 ;
struct sw_flow {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_flow_stats {scalar_t__ n_packets; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_PAD ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_STATS ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_TCP_FLAGS ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_USED ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ovs_flow_stats*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sw_flow const*,struct ovs_flow_stats*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(const struct sw_flow *flow,
				   struct sk_buff *skb)
{
	struct ovs_flow_stats stats;
	__be16 tcp_flags;
	unsigned long used;

	FUNC4(flow, &stats, &used, &tcp_flags);

	if (used &&
	    FUNC1(skb, OVS_FLOW_ATTR_USED, FUNC5(used),
			      OVS_FLOW_ATTR_PAD))
		return -EMSGSIZE;

	if (stats.n_packets &&
	    FUNC0(skb, OVS_FLOW_ATTR_STATS,
			  sizeof(struct ovs_flow_stats), &stats,
			  OVS_FLOW_ATTR_PAD))
		return -EMSGSIZE;

	if ((u8)FUNC3(tcp_flags) &&
	     FUNC2(skb, OVS_FLOW_ATTR_TCP_FLAGS, (u8)FUNC3(tcp_flags)))
		return -EMSGSIZE;

	return 0;
}