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
typedef  int u8 ;
struct xt_action_param {int /*<<< orphan*/  thoff; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int protocol; } ;

/* Variables and functions */
#define  IPPROTO_L2TP 129 
#define  IPPROTO_UDP 128 
 struct iphdr* FUNC0 (struct sk_buff const*) ; 
 int FUNC1 (struct sk_buff const*,struct xt_action_param*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff const*,struct xt_action_param*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct iphdr *iph = FUNC0(skb);
	u8 ipproto = iph->protocol;

	/* l2tp_mt_check4 already restricts the transport protocol */
	switch (ipproto) {
	case IPPROTO_UDP:
		return FUNC2(skb, par, par->thoff);
	case IPPROTO_L2TP:
		return FUNC1(skb, par, par->thoff);
	}

	return false;
}