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
struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_bridge*,struct net_device*,struct netlink_ext_ack*) ; 
 struct net_bridge* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct net_device *slave_dev,
			struct netlink_ext_ack *extack)

{
	struct net_bridge *br = FUNC1(dev);

	return FUNC0(br, slave_dev, extack);
}