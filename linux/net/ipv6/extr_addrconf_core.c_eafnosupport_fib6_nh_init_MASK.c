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
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct fib6_nh {int dummy; } ;
struct fib6_config {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 

__attribute__((used)) static int FUNC1(struct net *net, struct fib6_nh *fib6_nh,
				     struct fib6_config *cfg, gfp_t gfp_flags,
				     struct netlink_ext_ack *extack)
{
	FUNC0(extack, "IPv6 support not enabled in kernel");
	return -EAFNOSUPPORT;
}