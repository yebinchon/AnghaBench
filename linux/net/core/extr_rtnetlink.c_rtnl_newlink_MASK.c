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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RTNL_MAX_TYPE ; 
 int FUNC0 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**) ; 
 struct nlattr** FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	struct nlattr **attr;
	int ret;

	attr = FUNC2(RTNL_MAX_TYPE + 1, sizeof(*attr), GFP_KERNEL);
	if (!attr)
		return -ENOMEM;

	ret = FUNC0(skb, nlh, attr, extack);
	FUNC1(attr);
	return ret;
}