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
struct net {int dummy; } ;
struct batadv_priv {int /*<<< orphan*/ * debug_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*) ; 
 scalar_t__ batadv_debugfs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (struct net_device*) ; 
 struct net init_net ; 
 struct batadv_priv* FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	struct batadv_priv *bat_priv = FUNC3(dev);
	struct net *net = FUNC2(dev);

	if (net != &init_net)
		return;

	FUNC0(bat_priv);

	if (batadv_debugfs) {
		FUNC1(bat_priv->debug_dir);
		bat_priv->debug_dir = NULL;
	}
}