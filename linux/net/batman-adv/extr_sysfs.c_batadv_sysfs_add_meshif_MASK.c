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
struct batadv_priv {int /*<<< orphan*/ * mesh_obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct batadv_attribute {TYPE_2__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_SYSFS_IF_MESH_SUBDIR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct batadv_attribute** batadv_mesh_attrs ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC8(struct net_device *dev)
{
	struct kobject *batif_kobject = &dev->dev.kobj;
	struct batadv_priv *bat_priv = FUNC5(dev);
	struct batadv_attribute **bat_attr;
	int err;

	bat_priv->mesh_obj = FUNC1(BATADV_SYSFS_IF_MESH_SUBDIR,
						    batif_kobject);
	if (!bat_priv->mesh_obj) {
		FUNC0(dev, "Can't add sysfs directory: %s/%s\n", dev->name,
			   BATADV_SYSFS_IF_MESH_SUBDIR);
		goto out;
	}

	for (bat_attr = batadv_mesh_attrs; *bat_attr; ++bat_attr) {
		err = FUNC6(bat_priv->mesh_obj,
					&((*bat_attr)->attr));
		if (err) {
			FUNC0(dev, "Can't add sysfs file: %s/%s/%s\n",
				   dev->name, BATADV_SYSFS_IF_MESH_SUBDIR,
				   ((*bat_attr)->attr).name);
			goto rem_attr;
		}
	}

	return 0;

rem_attr:
	for (bat_attr = batadv_mesh_attrs; *bat_attr; ++bat_attr)
		FUNC7(bat_priv->mesh_obj, &((*bat_attr)->attr));

	FUNC4(bat_priv->mesh_obj, KOBJ_REMOVE);
	FUNC2(bat_priv->mesh_obj);
	FUNC3(bat_priv->mesh_obj);
	bat_priv->mesh_obj = NULL;
out:
	return -ENOMEM;
}