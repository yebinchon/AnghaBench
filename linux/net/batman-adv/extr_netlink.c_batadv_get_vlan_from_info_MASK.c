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
typedef  int u16 ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct batadv_softif_vlan {int dummy; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 size_t BATADV_ATTR_VLANID ; 
 int BATADV_VLAN_HAS_TAG ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct batadv_softif_vlan* FUNC0 (int /*<<< orphan*/ ) ; 
 struct batadv_softif_vlan* FUNC1 (struct batadv_priv*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct batadv_softif_vlan *
FUNC3(struct batadv_priv *bat_priv, struct net *net,
			  struct genl_info *info)
{
	struct batadv_softif_vlan *vlan;
	u16 vid;

	if (!info->attrs[BATADV_ATTR_VLANID])
		return FUNC0(-EINVAL);

	vid = FUNC2(info->attrs[BATADV_ATTR_VLANID]);

	vlan = FUNC1(bat_priv, vid | BATADV_VLAN_HAS_TAG);
	if (!vlan)
		return FUNC0(-ENOENT);

	return vlan;
}