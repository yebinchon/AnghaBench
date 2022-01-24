#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xt_action_param {struct ebt_redirect_info* targinfo; } ;
struct sk_buff {int /*<<< orphan*/  pkt_type; } ;
struct ebt_redirect_info {unsigned int target; } ;
struct TYPE_11__ {TYPE_2__* br; } ;
struct TYPE_10__ {int /*<<< orphan*/  h_dest; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_8__ {TYPE_1__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 unsigned int EBT_DROP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NF_BR_BROUTING ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 TYPE_5__* FUNC0 (TYPE_3__*) ; 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xt_action_param const*) ; 
 TYPE_3__* FUNC5 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC6(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct ebt_redirect_info *info = par->targinfo;

	if (FUNC3(skb, ETH_ALEN))
		return EBT_DROP;

	if (FUNC4(par) != NF_BR_BROUTING)
		/* rcu_read_lock()ed by nf_hook_thresh */
		FUNC2(FUNC1(skb)->h_dest,
				FUNC0(FUNC5(par))->br->dev->dev_addr);
	else
		FUNC2(FUNC1(skb)->h_dest, FUNC5(par)->dev_addr);
	skb->pkt_type = PACKET_HOST;
	return info->target;
}