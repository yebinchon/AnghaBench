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
struct netlink_ext_ack {int dummy; } ;
struct fib6_config {scalar_t__ fc_metric; scalar_t__ fc_mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IP6_RT_PRIO_USER ; 
 int FUNC0 (struct fib6_config*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC1 (struct fib6_config*,struct netlink_ext_ack*) ; 
 int FUNC2 (struct sk_buff*,struct nlmsghdr*,struct fib6_config*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct nlmsghdr *nlh,
			      struct netlink_ext_ack *extack)
{
	struct fib6_config cfg;
	int err;

	err = FUNC2(skb, nlh, &cfg, extack);
	if (err < 0)
		return err;

	if (cfg.fc_metric == 0)
		cfg.fc_metric = IP6_RT_PRIO_USER;

	if (cfg.fc_mp)
		return FUNC1(&cfg, extack);
	else
		return FUNC0(&cfg, GFP_KERNEL, extack);
}