#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int fib_has_custom_local_routes; } ;
struct net {TYPE_1__ ipv4; } ;
struct fib_table {int dummy; } ;
struct fib_config {scalar_t__ fc_type; int /*<<< orphan*/  fc_table; } ;

/* Variables and functions */
 int ENOBUFS ; 
 scalar_t__ RTN_LOCAL ; 
 struct fib_table* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,struct fib_table*,struct fib_config*,struct netlink_ext_ack*) ; 
 int FUNC2 (struct net*,struct sk_buff*,struct nlmsghdr*,struct fib_config*,struct netlink_ext_ack*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC3(skb->sk);
	struct fib_config cfg;
	struct fib_table *tb;
	int err;

	err = FUNC2(net, skb, nlh, &cfg, extack);
	if (err < 0)
		goto errout;

	tb = FUNC0(net, cfg.fc_table);
	if (!tb) {
		err = -ENOBUFS;
		goto errout;
	}

	err = FUNC1(net, tb, &cfg, extack);
	if (!err && cfg.fc_type == RTN_LOCAL)
		net->ipv4.fib_has_custom_local_routes = true;
errout:
	return err;
}