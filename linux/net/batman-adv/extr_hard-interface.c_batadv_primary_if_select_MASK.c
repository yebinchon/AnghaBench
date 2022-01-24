#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct batadv_priv {TYPE_2__* algo_ops; int /*<<< orphan*/  primary_if; } ;
struct batadv_hard_iface {int /*<<< orphan*/  refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* primary_set ) (struct batadv_hard_iface*) ;} ;
struct TYPE_4__ {TYPE_1__ iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_hard_iface*) ; 

__attribute__((used)) static void FUNC7(struct batadv_priv *bat_priv,
				     struct batadv_hard_iface *new_hard_iface)
{
	struct batadv_hard_iface *curr_hard_iface;

	FUNC0();

	if (new_hard_iface)
		FUNC3(&new_hard_iface->refcount);

	curr_hard_iface = FUNC5(bat_priv->primary_if, 1);
	FUNC4(bat_priv->primary_if, new_hard_iface);

	if (!new_hard_iface)
		goto out;

	bat_priv->algo_ops->iface.primary_set(new_hard_iface);
	FUNC2(bat_priv, curr_hard_iface);

out:
	if (curr_hard_iface)
		FUNC1(curr_hard_iface);
}