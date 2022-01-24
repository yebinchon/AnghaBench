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
struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;
struct dsa_port {struct devlink_port devlink_port; TYPE_1__* ds; } ;
struct TYPE_2__ {scalar_t__ devlink; } ;

/* Variables and functions */
 struct dsa_port* FUNC0 (struct net_device*) ; 

__attribute__((used)) static struct devlink_port *FUNC1(struct net_device *dev)
{
	struct dsa_port *dp = FUNC0(dev);

	return dp->ds->devlink ? &dp->devlink_port : NULL;
}