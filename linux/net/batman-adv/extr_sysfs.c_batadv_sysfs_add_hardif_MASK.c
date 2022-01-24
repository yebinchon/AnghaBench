#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_4__ {struct kobject kobj; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct batadv_attribute {TYPE_2__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_SYSFS_IF_BAT_SUBDIR ; 
 int ENOMEM ; 
 struct batadv_attribute** batadv_batman_attrs ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ ,struct kobject*) ; 
 int FUNC2 (struct kobject*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*,TYPE_2__*) ; 

int FUNC4(struct kobject **hardif_obj, struct net_device *dev)
{
	struct kobject *hardif_kobject = &dev->dev.kobj;
	struct batadv_attribute **bat_attr;
	int err;

	*hardif_obj = FUNC1(BATADV_SYSFS_IF_BAT_SUBDIR,
					     hardif_kobject);

	if (!*hardif_obj) {
		FUNC0(dev, "Can't add sysfs directory: %s/%s\n", dev->name,
			   BATADV_SYSFS_IF_BAT_SUBDIR);
		goto out;
	}

	for (bat_attr = batadv_batman_attrs; *bat_attr; ++bat_attr) {
		err = FUNC2(*hardif_obj, &((*bat_attr)->attr));
		if (err) {
			FUNC0(dev, "Can't add sysfs file: %s/%s/%s\n",
				   dev->name, BATADV_SYSFS_IF_BAT_SUBDIR,
				   ((*bat_attr)->attr).name);
			goto rem_attr;
		}
	}

	return 0;

rem_attr:
	for (bat_attr = batadv_batman_attrs; *bat_attr; ++bat_attr)
		FUNC3(*hardif_obj, &((*bat_attr)->attr));
out:
	return -ENOMEM;
}