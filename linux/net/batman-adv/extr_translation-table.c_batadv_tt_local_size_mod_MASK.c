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
struct TYPE_2__ {int /*<<< orphan*/  num_entries; } ;
struct batadv_softif_vlan {TYPE_1__ tt; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_softif_vlan*) ; 

__attribute__((used)) static void FUNC3(struct batadv_priv *bat_priv,
				     unsigned short vid, int v)
{
	struct batadv_softif_vlan *vlan;

	vlan = FUNC1(bat_priv, vid);
	if (!vlan)
		return;

	FUNC0(v, &vlan->tt.num_entries);

	FUNC2(vlan);
}