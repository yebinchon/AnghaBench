#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  dim; } ;
struct TYPE_6__ {TYPE_2__ compat; } ;
struct TYPE_4__ {TYPE_3__ u; int /*<<< orphan*/  index; } ;
struct xt_set_info_match_v0 {TYPE_1__ match_set; } ;
struct xt_action_param {struct xt_set_info_match_v0* matchinfo; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IPSET_INV_MATCH ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff const*,struct xt_action_param*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  opt ; 
 int /*<<< orphan*/  FUNC2 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC3(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_set_info_match_v0 *info = par->matchinfo;

	FUNC0(opt, FUNC2(par), info->match_set.u.compat.dim,
		info->match_set.u.compat.flags, 0, UINT_MAX,
		0, 0, 0, 0);

	return FUNC1(info->match_set.index, skb, par, &opt,
			 info->match_set.u.compat.flags & IPSET_INV_MATCH);
}