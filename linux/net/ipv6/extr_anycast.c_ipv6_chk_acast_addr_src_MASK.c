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
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int IPV6_ADDR_LINKLOCAL ; 
 int FUNC0 (struct in6_addr const*) ; 
 int FUNC1 (struct net*,struct net_device*,struct in6_addr const*) ; 

bool FUNC2(struct net *net, struct net_device *dev,
			     const struct in6_addr *addr)
{
	return FUNC1(net,
				   (FUNC0(addr) & IPV6_ADDR_LINKLOCAL ?
				    dev : NULL),
				   addr);
}