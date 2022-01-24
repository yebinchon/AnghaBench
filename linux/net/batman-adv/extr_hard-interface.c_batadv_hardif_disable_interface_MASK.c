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
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_hard_iface {scalar_t__ if_status; int /*<<< orphan*/ * soft_iface; TYPE_3__* net_dev; int /*<<< orphan*/  batman_adv_ptype; } ;
typedef  enum batadv_hard_if_cleanup { ____Placeholder_batadv_hard_if_cleanup } batadv_hard_if_cleanup ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disable ) (struct batadv_hard_iface*) ;} ;
struct TYPE_5__ {TYPE_1__ iface; } ;

/* Variables and functions */
 int BATADV_IF_CLEANUP_AUTO ; 
 scalar_t__ BATADV_IF_INACTIVE ; 
 scalar_t__ BATADV_IF_NOT_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC7 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_priv*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct batadv_priv*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct batadv_priv* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct batadv_hard_iface*) ; 

void FUNC17(struct batadv_hard_iface *hard_iface,
				     enum batadv_hard_if_cleanup autodel)
{
	struct batadv_priv *bat_priv = FUNC14(hard_iface->soft_iface);
	struct batadv_hard_iface *primary_if = NULL;

	FUNC2(hard_iface);

	if (hard_iface->if_status != BATADV_IF_INACTIVE)
		goto out;

	FUNC6(hard_iface->soft_iface, "Removing interface: %s\n",
		    hard_iface->net_dev->name);
	FUNC13(&hard_iface->batman_adv_ptype);
	FUNC4(hard_iface);

	primary_if = FUNC7(bat_priv);
	if (hard_iface == primary_if) {
		struct batadv_hard_iface *new_if;

		new_if = FUNC3(hard_iface->soft_iface);
		FUNC8(bat_priv, new_if);

		if (new_if)
			FUNC4(new_if);
	}

	bat_priv->algo_ops->iface.disable(hard_iface);
	hard_iface->if_status = BATADV_IF_NOT_IN_USE;

	/* delete all references to this hard_iface */
	FUNC9(bat_priv);
	FUNC10(bat_priv, hard_iface);
	FUNC12(hard_iface->soft_iface);

	FUNC15(hard_iface->net_dev, hard_iface->soft_iface);
	FUNC5(hard_iface->soft_iface);

	/* nobody uses this interface anymore */
	if (FUNC1(hard_iface->soft_iface) <= 1) {
		FUNC0(bat_priv);

		if (autodel == BATADV_IF_CLEANUP_AUTO)
			FUNC11(hard_iface->soft_iface);
	}

	hard_iface->soft_iface = NULL;
	FUNC4(hard_iface);

out:
	if (primary_if)
		FUNC4(primary_if);
}