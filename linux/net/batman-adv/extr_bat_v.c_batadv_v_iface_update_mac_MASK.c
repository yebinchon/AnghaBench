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
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int /*<<< orphan*/  soft_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 struct batadv_hard_iface* FUNC1 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 struct batadv_priv* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct batadv_hard_iface *hard_iface)
{
	struct batadv_priv *bat_priv = FUNC3(hard_iface->soft_iface);
	struct batadv_hard_iface *primary_if;

	primary_if = FUNC1(bat_priv);
	if (primary_if != hard_iface)
		goto out;

	FUNC2(hard_iface);
out:
	if (primary_if)
		FUNC0(primary_if);
}