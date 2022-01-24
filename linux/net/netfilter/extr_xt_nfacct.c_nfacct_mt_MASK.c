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
struct xt_nfacct_match_info {int /*<<< orphan*/  nfacct; } ;
struct xt_action_param {struct xt_nfacct_match_info* targinfo; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int NFACCT_UNDERQUOTA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_action_param*) ; 

__attribute__((used)) static bool FUNC3(const struct sk_buff *skb, struct xt_action_param *par)
{
	int overquota;
	const struct xt_nfacct_match_info *info = par->targinfo;

	FUNC1(skb, info->nfacct);

	overquota = FUNC0(FUNC2(par), info->nfacct);

	return overquota == NFACCT_UNDERQUOTA ? false : true;
}