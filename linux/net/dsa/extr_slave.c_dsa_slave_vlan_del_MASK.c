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
struct switchdev_obj {struct net_device* orig_dev; } ;
struct net_device {int dummy; } ;
struct dsa_port {scalar_t__ bridge_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct switchdev_obj const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct dsa_port*,int /*<<< orphan*/ ) ; 
 struct dsa_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			      const struct switchdev_obj *obj)
{
	struct dsa_port *dp = FUNC3(dev);

	if (obj->orig_dev != dev)
		return -EOPNOTSUPP;

	if (dp->bridge_dev && !FUNC1(dp->bridge_dev))
		return 0;

	/* Do not deprogram the CPU port as it may be shared with other user
	 * ports which can be members of this VLAN as well.
	 */
	return FUNC2(dp, FUNC0(obj));
}