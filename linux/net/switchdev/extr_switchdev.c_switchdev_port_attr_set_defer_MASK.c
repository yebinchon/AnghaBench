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
struct switchdev_attr {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct switchdev_attr const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  switchdev_port_attr_set_deferred ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
					 const struct switchdev_attr *attr)
{
	return FUNC0(dev, attr, sizeof(*attr),
					  switchdev_port_attr_set_deferred);
}