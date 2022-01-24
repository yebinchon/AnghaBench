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
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int IPV6_ADDR_ANY ; 
 int XT_RPFILTER_INVERT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (struct sk_buff const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct xt_action_param*) ; 

__attribute__((used)) static bool FUNC7(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_rpfilter_info *info = par->matchinfo;
	int saddrtype;
	struct ipv6hdr *iph;
	bool invert = info->flags & XT_RPFILTER_INVERT;

	if (FUNC2(skb, FUNC5(par)))
		return true ^ invert;

	iph = FUNC1(skb);
	saddrtype = FUNC0(&iph->saddr);
	if (FUNC4(saddrtype == IPV6_ADDR_ANY))
		return true ^ invert; /* not routable: forward path will drop it */

	return FUNC3(FUNC6(par), skb, FUNC5(par),
					info->flags) ^ invert;
}