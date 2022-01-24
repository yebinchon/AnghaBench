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
struct nlattr {int dummy; } ;
struct batadv_softif_vlan {int /*<<< orphan*/  ap_isolation; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_softif_vlan*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 

__attribute__((used)) static int FUNC4(struct nlattr *attr,
						struct batadv_priv *bat_priv)
{
	struct batadv_softif_vlan *vlan;

	vlan = FUNC1(bat_priv, BATADV_NO_FLAGS);
	if (!vlan)
		return -ENOENT;

	FUNC0(&vlan->ap_isolation, !!FUNC3(attr));
	FUNC2(vlan);

	return 0;
}