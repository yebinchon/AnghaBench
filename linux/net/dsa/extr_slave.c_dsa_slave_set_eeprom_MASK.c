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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* set_eeprom ) (struct dsa_switch*,struct ethtool_eeprom*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct dsa_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct dsa_switch*,struct ethtool_eeprom*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
				struct ethtool_eeprom *eeprom, u8 *data)
{
	struct dsa_port *dp = FUNC0(dev);
	struct dsa_switch *ds = dp->ds;

	if (ds->ops->set_eeprom)
		return ds->ops->set_eeprom(ds, eeprom, data);

	return -EOPNOTSUPP;
}