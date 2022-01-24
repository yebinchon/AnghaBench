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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib6_config {int fc_delete_all_nh; scalar_t__ fc_mp; scalar_t__ fc_nh_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct fib6_config*,struct netlink_ext_ack*) ; 
 int FUNC2 (struct fib6_config*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct sk_buff*,struct nlmsghdr*,struct fib6_config*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct nlmsghdr *nlh,
			      struct netlink_ext_ack *extack)
{
	struct fib6_config cfg;
	int err;

	err = FUNC4(skb, nlh, &cfg, extack);
	if (err < 0)
		return err;

	if (cfg.fc_nh_id &&
	    !FUNC3(FUNC5(skb->sk), cfg.fc_nh_id)) {
		FUNC0(extack, "Nexthop id does not exist");
		return -EINVAL;
	}

	if (cfg.fc_mp)
		return FUNC2(&cfg, extack);
	else {
		cfg.fc_delete_all_nh = 1;
		return FUNC1(&cfg, extack);
	}
}