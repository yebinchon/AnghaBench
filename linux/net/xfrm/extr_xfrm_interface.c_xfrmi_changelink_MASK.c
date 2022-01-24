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
struct xfrm_if {struct net_device* dev; struct net* net; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 struct xfrm_if* FUNC0 (struct net_device*) ; 
 struct xfrm_if* FUNC1 (struct net*,struct xfrm_if_parms*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr**,struct xfrm_if_parms*) ; 
 int FUNC3 (struct xfrm_if*,struct xfrm_if_parms*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct nlattr *tb[],
			   struct nlattr *data[],
			   struct netlink_ext_ack *extack)
{
	struct xfrm_if *xi = FUNC0(dev);
	struct net *net = xi->net;
	struct xfrm_if_parms p;

	FUNC2(data, &p);
	xi = FUNC1(net, &p);
	if (!xi) {
		xi = FUNC0(dev);
	} else {
		if (xi->dev != dev)
			return -EEXIST;
	}

	return FUNC3(xi, &p);
}