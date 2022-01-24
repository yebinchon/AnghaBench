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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_tt_local_entry {int dummy; } ;
struct batadv_tt_global_entry {int dummy; } ;
struct batadv_softif_vlan {int /*<<< orphan*/  ap_isolation; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct batadv_tt_local_entry*,struct batadv_tt_global_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct batadv_softif_vlan* FUNC2 (struct batadv_priv*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_softif_vlan*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_tt_global_entry*) ; 
 struct batadv_tt_global_entry* FUNC5 (struct batadv_priv*,int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_tt_local_entry*) ; 
 struct batadv_tt_local_entry* FUNC7 (struct batadv_priv*,int /*<<< orphan*/ *,unsigned short) ; 

bool FUNC8(struct batadv_priv *bat_priv, u8 *src, u8 *dst,
			   unsigned short vid)
{
	struct batadv_tt_local_entry *tt_local_entry;
	struct batadv_tt_global_entry *tt_global_entry;
	struct batadv_softif_vlan *vlan;
	bool ret = false;

	vlan = FUNC2(bat_priv, vid);
	if (!vlan)
		return false;

	if (!FUNC1(&vlan->ap_isolation))
		goto vlan_put;

	tt_local_entry = FUNC7(bat_priv, dst, vid);
	if (!tt_local_entry)
		goto vlan_put;

	tt_global_entry = FUNC5(bat_priv, src, vid);
	if (!tt_global_entry)
		goto local_entry_put;

	if (FUNC0(tt_local_entry, tt_global_entry))
		ret = true;

	FUNC4(tt_global_entry);
local_entry_put:
	FUNC6(tt_local_entry);
vlan_put:
	FUNC3(vlan);
	return ret;
}