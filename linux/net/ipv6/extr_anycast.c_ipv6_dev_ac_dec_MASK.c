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
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct inet6_dev*,struct in6_addr const*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, const struct in6_addr *addr)
{
	struct inet6_dev *idev = FUNC0(dev);

	if (!idev)
		return -ENODEV;
	return FUNC1(idev, addr);
}