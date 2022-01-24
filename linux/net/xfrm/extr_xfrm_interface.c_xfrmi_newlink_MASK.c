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
struct xfrm_if_parms {int dummy; } ;
struct xfrm_if {struct net_device* dev; struct net* net; struct xfrm_if_parms p; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 struct net* FUNC0 (struct net_device*) ; 
 struct xfrm_if* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 struct xfrm_if* FUNC3 (struct net*,struct xfrm_if_parms*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr**,struct xfrm_if_parms*) ; 

__attribute__((used)) static int FUNC5(struct net *src_net, struct net_device *dev,
			struct nlattr *tb[], struct nlattr *data[],
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC0(dev);
	struct xfrm_if_parms p;
	struct xfrm_if *xi;
	int err;

	FUNC4(data, &p);
	xi = FUNC3(net, &p);
	if (xi)
		return -EEXIST;

	xi = FUNC1(dev);
	xi->p = p;
	xi->net = net;
	xi->dev = dev;

	err = FUNC2(dev);
	return err;
}