#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct in_device {TYPE_1__* dev; } ;
struct fib_nh {int fib_nh_flags; TYPE_1__* fib_nh_dev; int /*<<< orphan*/  fib_nh_scope; int /*<<< orphan*/  fib_nh_oif; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENODEV ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int RTNH_F_LINKDOWN ; 
 int RTNH_F_ONLINK ; 
 int RTNH_F_PERVASIVE ; 
 int /*<<< orphan*/  RT_SCOPE_HOST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct in_device* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct net *net, struct fib_nh *nh,
			      struct netlink_ext_ack *extack)
{
	struct in_device *in_dev;
	int err;

	if (nh->fib_nh_flags & (RTNH_F_PERVASIVE | RTNH_F_ONLINK)) {
		FUNC0(extack,
			       "Invalid flags for nexthop - PERVASIVE and ONLINK can not be set");
		return -EINVAL;
	}

	FUNC4();

	err = -ENODEV;
	in_dev = FUNC2(net, nh->fib_nh_oif);
	if (!in_dev)
		goto out;
	err = -ENETDOWN;
	if (!(in_dev->dev->flags & IFF_UP)) {
		FUNC0(extack, "Device for nexthop is not up");
		goto out;
	}

	nh->fib_nh_dev = in_dev->dev;
	FUNC1(nh->fib_nh_dev);
	nh->fib_nh_scope = RT_SCOPE_HOST;
	if (!FUNC3(nh->fib_nh_dev))
		nh->fib_nh_flags |= RTNH_F_LINKDOWN;
	err = 0;
out:
	FUNC5();
	return err;
}