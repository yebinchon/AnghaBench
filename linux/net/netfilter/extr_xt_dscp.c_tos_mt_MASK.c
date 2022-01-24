#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xt_tos_match_info {int tos_mask; int tos_value; int /*<<< orphan*/  invert; } ;
struct xt_action_param {struct xt_tos_match_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tos; } ;

/* Variables and functions */
 scalar_t__ NFPROTO_IPV4 ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct xt_action_param*) ; 

__attribute__((used)) static bool FUNC4(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_tos_match_info *info = par->matchinfo;

	if (FUNC3(par) == NFPROTO_IPV4)
		return ((FUNC0(skb)->tos & info->tos_mask) ==
		       info->tos_value) ^ !!info->invert;
	else
		return ((FUNC1(FUNC2(skb)) & info->tos_mask) ==
		       info->tos_value) ^ !!info->invert;
}