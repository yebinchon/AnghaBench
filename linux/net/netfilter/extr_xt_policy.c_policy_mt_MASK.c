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
struct xt_policy_info {int flags; } ;
struct xt_action_param {struct xt_policy_info* matchinfo; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int XT_POLICY_MATCH_IN ; 
 int XT_POLICY_MATCH_NONE ; 
 int FUNC0 (struct sk_buff const*,struct xt_policy_info const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff const*,struct xt_policy_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC3(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_policy_info *info = par->matchinfo;
	int ret;

	if (info->flags & XT_POLICY_MATCH_IN)
		ret = FUNC0(skb, info, FUNC2(par));
	else
		ret = FUNC1(skb, info, FUNC2(par));

	if (ret < 0)
		ret = info->flags & XT_POLICY_MATCH_NONE ? true : false;
	else if (info->flags & XT_POLICY_MATCH_NONE)
		ret = false;

	return ret;
}