#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct batadv_priv {TYPE_3__* algo_ops; } ;
struct batadv_hard_iface {scalar_t__ if_status; int /*<<< orphan*/  soft_iface; TYPE_1__* net_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* activate ) (struct batadv_hard_iface*) ;int /*<<< orphan*/  (* update_mac ) (struct batadv_hard_iface*) ;} ;
struct TYPE_6__ {TYPE_2__ iface; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BATADV_IF_INACTIVE ; 
 scalar_t__ BATADV_IF_TO_BE_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct batadv_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_hard_iface*) ; 

__attribute__((used)) static void
FUNC8(struct batadv_hard_iface *hard_iface)
{
	struct batadv_priv *bat_priv;
	struct batadv_hard_iface *primary_if = NULL;

	if (hard_iface->if_status != BATADV_IF_INACTIVE)
		goto out;

	bat_priv = FUNC5(hard_iface->soft_iface);

	bat_priv->algo_ops->iface.update_mac(hard_iface);
	hard_iface->if_status = BATADV_IF_TO_BE_ACTIVATED;

	/* the first active interface becomes our primary interface or
	 * the next active interface after the old primary interface was removed
	 */
	primary_if = FUNC2(bat_priv);
	if (!primary_if)
		FUNC3(bat_priv, hard_iface);

	FUNC1(hard_iface->soft_iface, "Interface activated: %s\n",
		    hard_iface->net_dev->name);

	FUNC4(hard_iface->soft_iface);

	if (bat_priv->algo_ops->iface.activate)
		bat_priv->algo_ops->iface.activate(hard_iface);

out:
	if (primary_if)
		FUNC0(primary_if);
}