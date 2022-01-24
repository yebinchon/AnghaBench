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
struct xt_action_param {struct ip6t_reject_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ip6t_reject_info {int with; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_ADDR_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_ADM_PROHIBITED ; 
 int /*<<< orphan*/  ICMPV6_NOROUTE ; 
 int /*<<< orphan*/  ICMPV6_NOT_NEIGHBOUR ; 
 int /*<<< orphan*/  ICMPV6_POLICY_FAIL ; 
 int /*<<< orphan*/  ICMPV6_PORT_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_REJECT_ROUTE ; 
#define  IP6T_ICMP6_ADDR_UNREACH 136 
#define  IP6T_ICMP6_ADM_PROHIBITED 135 
#define  IP6T_ICMP6_ECHOREPLY 134 
#define  IP6T_ICMP6_NOT_NEIGHBOUR 133 
#define  IP6T_ICMP6_NO_ROUTE 132 
#define  IP6T_ICMP6_POLICY_FAIL 131 
#define  IP6T_ICMP6_PORT_UNREACH 130 
#define  IP6T_ICMP6_REJECT_ROUTE 129 
#define  IP6T_TCP_RESET 128 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_action_param const*) ; 
 struct net* FUNC3 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC4(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct ip6t_reject_info *reject = par->targinfo;
	struct net *net = FUNC3(par);

	switch (reject->with) {
	case IP6T_ICMP6_NO_ROUTE:
		FUNC1(net, skb, ICMPV6_NOROUTE, FUNC2(par));
		break;
	case IP6T_ICMP6_ADM_PROHIBITED:
		FUNC1(net, skb, ICMPV6_ADM_PROHIBITED,
				 FUNC2(par));
		break;
	case IP6T_ICMP6_NOT_NEIGHBOUR:
		FUNC1(net, skb, ICMPV6_NOT_NEIGHBOUR,
				 FUNC2(par));
		break;
	case IP6T_ICMP6_ADDR_UNREACH:
		FUNC1(net, skb, ICMPV6_ADDR_UNREACH,
				 FUNC2(par));
		break;
	case IP6T_ICMP6_PORT_UNREACH:
		FUNC1(net, skb, ICMPV6_PORT_UNREACH,
				 FUNC2(par));
		break;
	case IP6T_ICMP6_ECHOREPLY:
		/* Do nothing */
		break;
	case IP6T_TCP_RESET:
		FUNC0(net, skb, FUNC2(par));
		break;
	case IP6T_ICMP6_POLICY_FAIL:
		FUNC1(net, skb, ICMPV6_POLICY_FAIL, FUNC2(par));
		break;
	case IP6T_ICMP6_REJECT_ROUTE:
		FUNC1(net, skb, ICMPV6_REJECT_ROUTE,
				 FUNC2(par));
		break;
	}

	return NF_DROP;
}