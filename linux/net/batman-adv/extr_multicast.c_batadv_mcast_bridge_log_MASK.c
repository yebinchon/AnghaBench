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
struct batadv_mcast_mla_flags {int /*<<< orphan*/  querier_ipv6; int /*<<< orphan*/  querier_ipv4; scalar_t__ bridged; } ;
struct TYPE_2__ {struct batadv_mcast_mla_flags mla_flags; } ;
struct batadv_priv {TYPE_1__ mcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_MCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct batadv_priv *bat_priv,
			struct batadv_mcast_mla_flags *new_flags)
{
	struct batadv_mcast_mla_flags *old_flags = &bat_priv->mcast.mla_flags;

	if (!old_flags->bridged && new_flags->bridged)
		FUNC0(BATADV_DBG_MCAST, bat_priv,
			   "Bridge added: Setting Unsnoopables(U)-flag\n");
	else if (old_flags->bridged && !new_flags->bridged)
		FUNC0(BATADV_DBG_MCAST, bat_priv,
			   "Bridge removed: Unsetting Unsnoopables(U)-flag\n");

	if (new_flags->bridged) {
		FUNC1(bat_priv, "IGMP",
					 &old_flags->querier_ipv4,
					 &new_flags->querier_ipv4);
		FUNC1(bat_priv, "MLD",
					 &old_flags->querier_ipv6,
					 &new_flags->querier_ipv6);
	}
}