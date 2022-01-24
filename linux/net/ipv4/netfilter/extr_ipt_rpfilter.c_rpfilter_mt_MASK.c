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
struct xt_rpfilter_info {int flags; } ;
struct xt_action_param {struct xt_rpfilter_info* matchinfo; } ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  flowi4_scope; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_iif; } ;
typedef  int /*<<< orphan*/  flow ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XT_RPFILTER_INVERT ; 
 int XT_RPFILTER_VALID_MARK ; 
 struct iphdr* FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC11 (struct xt_action_param*) ; 

__attribute__((used)) static bool FUNC12(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_rpfilter_info *info;
	const struct iphdr *iph;
	struct flowi4 flow;
	bool invert;

	info = par->matchinfo;
	invert = info->flags & XT_RPFILTER_INVERT;

	if (FUNC8(skb, FUNC10(par)))
		return true ^ invert;

	iph = FUNC1(skb);
	if (FUNC4(iph->saddr)) {
		if (FUNC2(iph->daddr) ||
		    FUNC3(iph->daddr))
			return true ^ invert;
	}

	FUNC6(&flow, 0, sizeof(flow));
	flow.flowi4_iif = LOOPBACK_IFINDEX;
	flow.daddr = iph->saddr;
	flow.saddr = FUNC7(iph->daddr);
	flow.flowi4_mark = info->flags & XT_RPFILTER_VALID_MARK ? skb->mark : 0;
	flow.flowi4_tos = FUNC0(iph->tos);
	flow.flowi4_scope = RT_SCOPE_UNIVERSE;
	flow.flowi4_oif = FUNC5(FUNC10(par));

	return FUNC9(FUNC11(par), &flow, FUNC10(par), info->flags) ^ invert;
}