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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  lock; } ;
struct net {int dummy; } ;

/* Variables and functions */
 size_t IFLA_ADDRESS ; 
 int FUNC0 (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net *src_net, struct net_device *dev,
			  struct nlattr *tb[], struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	struct net_bridge *br = FUNC3(dev);
	int err;

	err = FUNC5(dev);
	if (err)
		return err;

	if (tb[IFLA_ADDRESS]) {
		FUNC6(&br->lock);
		FUNC2(br, FUNC4(tb[IFLA_ADDRESS]));
		FUNC7(&br->lock);
	}

	err = FUNC0(dev, tb, data, extack);
	if (err)
		FUNC1(dev, NULL);

	return err;
}