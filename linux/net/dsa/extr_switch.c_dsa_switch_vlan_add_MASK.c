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
struct dsa_switch {int num_ports; TYPE_1__* ops; } ;
struct dsa_notifier_vlan_info {int /*<<< orphan*/  vlan; int /*<<< orphan*/  trans; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_vlan_add ) (struct dsa_switch*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dsa_switch*,int,struct dsa_notifier_vlan_info*) ; 
 int FUNC1 (struct dsa_switch*,struct dsa_notifier_vlan_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dsa_switch *ds,
			       struct dsa_notifier_vlan_info *info)
{
	int port;

	if (FUNC3(info->trans))
		return FUNC1(ds, info);

	if (!ds->ops->port_vlan_add)
		return 0;

	for (port = 0; port < ds->num_ports; port++)
		if (FUNC0(ds, port, info))
			ds->ops->port_vlan_add(ds, port, info->vlan);

	return 0;
}