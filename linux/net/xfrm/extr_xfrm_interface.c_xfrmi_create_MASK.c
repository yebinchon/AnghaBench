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
struct xfrmi_net {int dummy; } ;
struct xfrm_if {int dummy; } ;
struct net_device {int /*<<< orphan*/ * rtnl_link_ops; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net* FUNC1 (struct net_device*) ; 
 struct xfrmi_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct xfrm_if* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrmi_net*,struct xfrm_if*) ; 
 int /*<<< orphan*/  xfrmi_link_ops ; 
 int /*<<< orphan*/  xfrmi_net_id ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct xfrm_if *xi = FUNC3(dev);
	struct net *net = FUNC1(dev);
	struct xfrmi_net *xfrmn = FUNC2(net, xfrmi_net_id);
	int err;

	dev->rtnl_link_ops = &xfrmi_link_ops;
	err = FUNC4(dev);
	if (err < 0)
		goto out;

	FUNC0(dev);
	FUNC5(xfrmn, xi);

	return 0;

out:
	return err;
}