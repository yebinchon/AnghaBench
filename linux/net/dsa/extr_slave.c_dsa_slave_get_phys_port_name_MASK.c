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
struct dsa_port {int index; TYPE_1__* ds; } ;
struct TYPE_2__ {scalar_t__ devlink; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct dsa_port* FUNC0 (struct net_device*) ; 
 size_t FUNC1 (char*,size_t,char*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
					char *name, size_t len)
{
	struct dsa_port *dp = FUNC0(dev);

	/* For non-legacy ports, devlink is used and it takes
	 * care of the name generation. This ndo implementation
	 * should be removed with legacy support.
	 */
	if (dp->ds->devlink)
		return -EOPNOTSUPP;

	if (FUNC1(name, len, "p%d", dp->index) >= len)
		return -EINVAL;

	return 0;
}