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
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct batadv_hard_iface*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC2 (struct batadv_priv*) ; 
 struct batadv_priv* FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *net_dev)
{
	struct batadv_priv *bat_priv = FUNC3(net_dev);
	struct batadv_hard_iface *primary_if;

	primary_if = FUNC2(bat_priv);
	if (!primary_if)
		return;

	/* this function already purges everything when bla is disabled,
	 * so just call that one.
	 */
	FUNC0(bat_priv, primary_if, primary_if);
	FUNC1(primary_if);
}