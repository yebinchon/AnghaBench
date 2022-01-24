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
struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ip_set_ext {int dummy; } ;
struct ip_set_adt_opt {int dummy; } ;
struct ip_set {int dummy; } ;
typedef  enum ipset_adt { ____Placeholder_ipset_adt } ipset_adt ;

/* Variables and functions */
 int EINVAL ; 
#define  IPSET_ADD 130 
#define  IPSET_DEL 129 
#define  IPSET_TEST 128 
 struct ip_set_ext FUNC0 (struct sk_buff const*,struct ip_set_adt_opt*,struct ip_set*) ; 
 int FUNC1 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,struct ip_set_adt_opt*,struct ip_set_ext*) ; 
 int FUNC2 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,struct ip_set_adt_opt*,struct ip_set_ext*) ; 
 int FUNC3 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,struct ip_set_adt_opt*,struct ip_set_ext*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct ip_set *set, const struct sk_buff *skb,
	      const struct xt_action_param *par,
	      enum ipset_adt adt, struct ip_set_adt_opt *opt)
{
	struct ip_set_ext ext = FUNC0(skb, opt, set);
	int ret = -EINVAL;

	FUNC4();
	switch (adt) {
	case IPSET_TEST:
		ret = FUNC3(set, skb, par, opt, &ext);
		break;
	case IPSET_ADD:
		ret = FUNC1(set, skb, par, opt, &ext);
		break;
	case IPSET_DEL:
		ret = FUNC2(set, skb, par, opt, &ext);
		break;
	default:
		break;
	}
	FUNC5();

	return ret;
}