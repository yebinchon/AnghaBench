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
struct sk_buff {int dummy; } ;
struct iphdr {int /*<<< orphan*/  protocol; } ;
struct flow_offload {int flags; } ;
typedef  enum flow_offload_tuple_dir { ____Placeholder_flow_offload_tuple_dir } flow_offload_tuple_dir ;

/* Variables and functions */
 int FLOW_OFFLOAD_DNAT ; 
 int FLOW_OFFLOAD_SNAT ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct flow_offload const*,struct sk_buff*,struct iphdr*,unsigned int,int) ; 
 scalar_t__ FUNC2 (struct flow_offload const*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct flow_offload const*,struct sk_buff*,struct iphdr*,unsigned int,int) ; 
 scalar_t__ FUNC4 (struct flow_offload const*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(const struct flow_offload *flow, struct sk_buff *skb,
			  unsigned int thoff, enum flow_offload_tuple_dir dir)
{
	struct iphdr *iph = FUNC0(skb);

	if (flow->flags & FLOW_OFFLOAD_SNAT &&
	    (FUNC4(flow, skb, thoff, iph->protocol, dir) < 0 ||
	     FUNC3(flow, skb, iph, thoff, dir) < 0))
		return -1;
	if (flow->flags & FLOW_OFFLOAD_DNAT &&
	    (FUNC2(flow, skb, thoff, iph->protocol, dir) < 0 ||
	     FUNC1(flow, skb, iph, thoff, dir) < 0))
		return -1;

	return 0;
}