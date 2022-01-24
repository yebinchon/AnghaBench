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
struct switchdev_trans {int dummy; } ;
struct dsa_switch {int vlan_filtering; scalar_t__ vlan_filtering_is_global; TYPE_1__* ops; } ;
struct dsa_port {int vlan_filtering; int /*<<< orphan*/  index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* port_vlan_filtering ) (struct dsa_switch*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_port*,int) ; 
 int FUNC1 (struct dsa_port*) ; 
 int FUNC2 (struct dsa_switch*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct switchdev_trans*) ; 

int FUNC4(struct dsa_port *dp, bool vlan_filtering,
			    struct switchdev_trans *trans)
{
	struct dsa_switch *ds = dp->ds;
	int err;

	/* bridge skips -EOPNOTSUPP, so skip the prepare phase */
	if (FUNC3(trans))
		return 0;

	if (!ds->ops->port_vlan_filtering)
		return 0;

	if (!FUNC0(dp, vlan_filtering))
		return -EINVAL;

	if (FUNC1(dp) == vlan_filtering)
		return 0;

	err = ds->ops->port_vlan_filtering(ds, dp->index,
					   vlan_filtering);
	if (err)
		return err;

	if (ds->vlan_filtering_is_global)
		ds->vlan_filtering = vlan_filtering;
	else
		dp->vlan_filtering = vlan_filtering;
	return 0;
}