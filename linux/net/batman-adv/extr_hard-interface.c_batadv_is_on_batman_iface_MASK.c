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
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 struct net* FUNC1 (struct net_device const*,struct net*) ; 
 scalar_t__ FUNC2 (struct net_device const*,struct net*,struct net_device*,struct net*) ; 
 scalar_t__ FUNC3 (struct net_device const*) ; 
 scalar_t__ FUNC4 (struct net_device const*) ; 
 struct net* FUNC5 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static bool FUNC7(const struct net_device *net_dev)
{
	struct net *net = FUNC5(net_dev);
	struct net_device *parent_dev;
	struct net *parent_net;
	bool ret;

	/* check if this is a batman-adv mesh interface */
	if (FUNC3(net_dev))
		return true;

	/* no more parents..stop recursion */
	if (FUNC4(net_dev) == 0 ||
	    FUNC4(net_dev) == net_dev->ifindex)
		return false;

	parent_net = FUNC1(net_dev, net);

	/* recurse over the parent device */
	parent_dev = FUNC0((struct net *)parent_net,
					FUNC4(net_dev));
	/* if we got a NULL parent_dev there is something broken.. */
	if (!parent_dev) {
		FUNC6("Cannot find parent device\n");
		return false;
	}

	if (FUNC2(net_dev, net, parent_dev, parent_net))
		return false;

	ret = FUNC7(parent_dev);

	return ret;
}