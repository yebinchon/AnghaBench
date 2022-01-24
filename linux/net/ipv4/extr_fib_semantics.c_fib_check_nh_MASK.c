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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fib_nh {scalar_t__ fib_nh_gw_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (struct net*,struct fib_nh*,struct netlink_ext_ack*) ; 
 int FUNC1 (struct net*,struct fib_nh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC2 (struct net*,struct fib_nh*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

int FUNC3(struct net *net, struct fib_nh *nh, u32 table, u8 scope,
		 struct netlink_ext_ack *extack)
{
	int err;

	if (nh->fib_nh_gw_family == AF_INET)
		err = FUNC1(net, nh, table, scope, extack);
	else if (nh->fib_nh_gw_family == AF_INET6)
		err = FUNC2(net, nh, table, extack);
	else
		err = FUNC0(net, nh, extack);

	return err;
}