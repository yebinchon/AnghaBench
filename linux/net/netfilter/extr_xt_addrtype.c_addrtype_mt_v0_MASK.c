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
struct xt_addrtype_info {int invert_source; int invert_dest; scalar_t__ dest; scalar_t__ source; } ;
struct xt_action_param {struct xt_addrtype_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 struct iphdr* FUNC0 (struct sk_buff const*) ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct net* FUNC2 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC3(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct net *net = FUNC2(par);
	const struct xt_addrtype_info *info = par->matchinfo;
	const struct iphdr *iph = FUNC0(skb);
	bool ret = true;

	if (info->source)
		ret &= FUNC1(net, NULL, iph->saddr, info->source) ^
		       info->invert_source;
	if (info->dest)
		ret &= FUNC1(net, NULL, iph->daddr, info->dest) ^
		       info->invert_dest;

	return ret;
}