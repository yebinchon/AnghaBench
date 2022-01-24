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
struct net_device {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  dev; } ;
struct net {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 struct net_device* FUNC0 (struct net*,int) ; 
 int FUNC1 (struct net_bridge*,struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct net_bridge*,struct net_device*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_bridge *br, int ifindex, int isadd)
{
	struct net *net = FUNC3(br->dev);
	struct net_device *dev;
	int ret;

	if (!FUNC4(net->user_ns, CAP_NET_ADMIN))
		return -EPERM;

	dev = FUNC0(net, ifindex);
	if (dev == NULL)
		return -EINVAL;

	if (isadd)
		ret = FUNC1(br, dev, NULL);
	else
		ret = FUNC2(br, dev);

	return ret;
}