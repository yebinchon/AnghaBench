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
struct TYPE_2__ {int /*<<< orphan*/ * backbone_hash; int /*<<< orphan*/ * claim_hash; int /*<<< orphan*/  work; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_hard_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct batadv_hard_iface*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct batadv_hard_iface* FUNC4 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct batadv_priv *bat_priv)
{
	struct batadv_hard_iface *primary_if;

	FUNC5(&bat_priv->bla.work);
	primary_if = FUNC4(bat_priv);

	if (bat_priv->bla.claim_hash) {
		FUNC1(bat_priv, primary_if, 1);
		FUNC3(bat_priv->bla.claim_hash);
		bat_priv->bla.claim_hash = NULL;
	}
	if (bat_priv->bla.backbone_hash) {
		FUNC0(bat_priv, 1);
		FUNC3(bat_priv->bla.backbone_hash);
		bat_priv->bla.backbone_hash = NULL;
	}
	if (primary_if)
		FUNC2(primary_if);
}