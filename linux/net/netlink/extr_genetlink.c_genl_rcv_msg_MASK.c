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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; } ;
struct netlink_ext_ack {int dummy; } ;
struct genl_family {int /*<<< orphan*/  parallel_ops; } ;

/* Variables and functions */
 int ENOENT ; 
 struct genl_family* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct genl_family const*,struct sk_buff*,struct nlmsghdr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	const struct genl_family *family;
	int err;

	family = FUNC0(nlh->nlmsg_type);
	if (family == NULL)
		return -ENOENT;

	if (!family->parallel_ops)
		FUNC2();

	err = FUNC1(family, skb, nlh, extack);

	if (!family->parallel_ops)
		FUNC3();

	return err;
}