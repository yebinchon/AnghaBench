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
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/ * debug_dir; } ;
struct TYPE_2__ {int mode; int /*<<< orphan*/  name; } ;
struct batadv_debuginfo {int /*<<< orphan*/  fops; TYPE_1__ attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_debugfs ; 
 struct batadv_debuginfo** batadv_mesh_debuginfos ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct net* FUNC6 (struct net_device*) ; 
 struct net init_net ; 
 struct batadv_priv* FUNC7 (struct net_device*) ; 

int FUNC8(struct net_device *dev)
{
	struct batadv_priv *bat_priv = FUNC7(dev);
	struct batadv_debuginfo **bat_debug;
	struct net *net = FUNC6(dev);

	if (net != &init_net)
		return 0;

	bat_priv->debug_dir = FUNC3(dev->name, batadv_debugfs);

	FUNC2(bat_priv);

	if (FUNC0(bat_priv) < 0)
		goto rem_attr;

	for (bat_debug = batadv_mesh_debuginfos; *bat_debug; ++bat_debug)
		FUNC4(((*bat_debug)->attr).name,
				    S_IFREG | ((*bat_debug)->attr).mode,
				    bat_priv->debug_dir, dev,
				    &(*bat_debug)->fops);

	FUNC1(bat_priv);

	return 0;
rem_attr:
	FUNC5(bat_priv->debug_dir);
	bat_priv->debug_dir = NULL;
	return -ENOMEM;
}