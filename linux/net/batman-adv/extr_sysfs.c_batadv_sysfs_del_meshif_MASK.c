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
struct net_device {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/ * mesh_obj; } ;
struct batadv_attribute {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 struct batadv_attribute** batadv_mesh_attrs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *dev)
{
	struct batadv_priv *bat_priv = FUNC3(dev);
	struct batadv_attribute **bat_attr;

	for (bat_attr = batadv_mesh_attrs; *bat_attr; ++bat_attr)
		FUNC4(bat_priv->mesh_obj, &((*bat_attr)->attr));

	FUNC2(bat_priv->mesh_obj, KOBJ_REMOVE);
	FUNC0(bat_priv->mesh_obj);
	FUNC1(bat_priv->mesh_obj);
	bat_priv->mesh_obj = NULL;
}