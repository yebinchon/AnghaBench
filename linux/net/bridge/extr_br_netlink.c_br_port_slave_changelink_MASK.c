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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nlattr**) ; 
 struct net_bridge* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *brdev,
				    struct net_device *dev,
				    struct nlattr *tb[],
				    struct nlattr *data[],
				    struct netlink_ext_ack *extack)
{
	struct net_bridge *br = FUNC2(brdev);
	int ret;

	if (!data)
		return 0;

	FUNC3(&br->lock);
	ret = FUNC1(FUNC0(dev), data);
	FUNC4(&br->lock);

	return ret;
}