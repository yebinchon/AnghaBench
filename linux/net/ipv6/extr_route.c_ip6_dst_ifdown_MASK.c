#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rt6_info {struct inet6_dev* rt6i_idev; } ;
struct net_device {int dummy; } ;
struct inet6_dev {struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 

__attribute__((used)) static void FUNC3(struct dst_entry *dst, struct net_device *dev,
			   int how)
{
	struct rt6_info *rt = (struct rt6_info *)dst;
	struct inet6_dev *idev = rt->rt6i_idev;
	struct net_device *loopback_dev =
		FUNC0(dev)->loopback_dev;

	if (idev && idev->dev != loopback_dev) {
		struct inet6_dev *loopback_idev = FUNC1(loopback_dev);
		if (loopback_idev) {
			rt->rt6i_idev = loopback_idev;
			FUNC2(idev);
		}
	}
}