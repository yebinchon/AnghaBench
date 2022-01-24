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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nexthop {int dummy; } ;
struct fib6_nh {int /*<<< orphan*/  nh_common; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  RTA_MULTIPATH ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int) ; 
 struct fib6_nh* FUNC1 (struct nexthop*) ; 
 scalar_t__ FUNC2 (struct nexthop*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct nexthop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct nexthop *nh,
				 unsigned char *flags)
{
	if (FUNC2(nh)) {
		struct nlattr *mp;

		mp = FUNC5(skb, RTA_MULTIPATH);
		if (!mp)
			goto nla_put_failure;

		if (FUNC3(skb, nh, AF_INET6))
			goto nla_put_failure;

		FUNC4(skb, mp);
	} else {
		struct fib6_nh *fib6_nh;

		fib6_nh = FUNC1(nh);
		if (FUNC0(skb, &fib6_nh->nh_common, AF_INET6,
				     flags, false) < 0)
			goto nla_put_failure;
	}

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}