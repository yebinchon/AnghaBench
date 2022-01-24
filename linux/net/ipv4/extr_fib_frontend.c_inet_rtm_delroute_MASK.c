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
struct net {int dummy; } ;
struct fib_table {int dummy; } ;
struct fib_config {int /*<<< orphan*/  fc_table; scalar_t__ fc_nh_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct fib_table* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,struct fib_table*,struct fib_config*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,scalar_t__) ; 
 int FUNC4 (struct net*,struct sk_buff*,struct nlmsghdr*,struct fib_config*,struct netlink_ext_ack*) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC5(skb->sk);
	struct fib_config cfg;
	struct fib_table *tb;
	int err;

	err = FUNC4(net, skb, nlh, &cfg, extack);
	if (err < 0)
		goto errout;

	if (cfg.fc_nh_id && !FUNC3(net, cfg.fc_nh_id)) {
		FUNC0(extack, "Nexthop id does not exist");
		err = -EINVAL;
		goto errout;
	}

	tb = FUNC1(net, cfg.fc_table);
	if (!tb) {
		FUNC0(extack, "FIB table does not exist");
		err = -ESRCH;
		goto errout;
	}

	err = FUNC2(net, tb, &cfg, extack);
errout:
	return err;
}