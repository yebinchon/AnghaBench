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
struct mpls_route_config {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mpls_route_config*) ; 
 struct mpls_route_config* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mpls_route_config*,struct netlink_ext_ack*) ; 
 int FUNC3 (struct sk_buff*,struct nlmsghdr*,struct mpls_route_config*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct mpls_route_config *cfg;
	int err;

	cfg = FUNC1(sizeof(*cfg), GFP_KERNEL);
	if (!cfg)
		return -ENOMEM;

	err = FUNC3(skb, nlh, cfg, extack);
	if (err < 0)
		goto out;

	err = FUNC2(cfg, extack);
out:
	FUNC0(cfg);

	return err;
}