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
struct xt_action_param {struct ipt_reject_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_reject_info {int with; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_HOST_ANO ; 
 int /*<<< orphan*/  ICMP_HOST_UNREACH ; 
 int /*<<< orphan*/  ICMP_NET_ANO ; 
 int /*<<< orphan*/  ICMP_NET_UNREACH ; 
 int /*<<< orphan*/  ICMP_PKT_FILTERED ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 int /*<<< orphan*/  ICMP_PROT_UNREACH ; 
#define  IPT_ICMP_ADMIN_PROHIBITED 136 
#define  IPT_ICMP_ECHOREPLY 135 
#define  IPT_ICMP_HOST_PROHIBITED 134 
#define  IPT_ICMP_HOST_UNREACHABLE 133 
#define  IPT_ICMP_NET_PROHIBITED 132 
#define  IPT_ICMP_NET_UNREACHABLE 131 
#define  IPT_ICMP_PORT_UNREACHABLE 130 
#define  IPT_ICMP_PROT_UNREACHABLE 129 
#define  IPT_TCP_RESET 128 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct xt_action_param const*) ; 
 int /*<<< orphan*/  FUNC3 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC4(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct ipt_reject_info *reject = par->targinfo;
	int hook = FUNC2(par);

	switch (reject->with) {
	case IPT_ICMP_NET_UNREACHABLE:
		FUNC1(skb, ICMP_NET_UNREACH, hook);
		break;
	case IPT_ICMP_HOST_UNREACHABLE:
		FUNC1(skb, ICMP_HOST_UNREACH, hook);
		break;
	case IPT_ICMP_PROT_UNREACHABLE:
		FUNC1(skb, ICMP_PROT_UNREACH, hook);
		break;
	case IPT_ICMP_PORT_UNREACHABLE:
		FUNC1(skb, ICMP_PORT_UNREACH, hook);
		break;
	case IPT_ICMP_NET_PROHIBITED:
		FUNC1(skb, ICMP_NET_ANO, hook);
		break;
	case IPT_ICMP_HOST_PROHIBITED:
		FUNC1(skb, ICMP_HOST_ANO, hook);
		break;
	case IPT_ICMP_ADMIN_PROHIBITED:
		FUNC1(skb, ICMP_PKT_FILTERED, hook);
		break;
	case IPT_TCP_RESET:
		FUNC0(FUNC3(par), skb, hook);
	case IPT_ICMP_ECHOREPLY:
		/* Doesn't happen. */
		break;
	}

	return NF_DROP;
}