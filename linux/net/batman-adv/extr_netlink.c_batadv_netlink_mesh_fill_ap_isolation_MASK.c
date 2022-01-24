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
struct sk_buff {int dummy; } ;
struct batadv_softif_vlan {int /*<<< orphan*/  ap_isolation; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_AP_ISOLATION_ENABLED ; 
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_softif_vlan*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
						 struct batadv_priv *bat_priv)
{
	struct batadv_softif_vlan *vlan;
	u8 ap_isolation;

	vlan = FUNC1(bat_priv, BATADV_NO_FLAGS);
	if (!vlan)
		return 0;

	ap_isolation = FUNC0(&vlan->ap_isolation);
	FUNC2(vlan);

	return FUNC3(msg, BATADV_ATTR_AP_ISOLATION_ENABLED,
			  !!ap_isolation);
}