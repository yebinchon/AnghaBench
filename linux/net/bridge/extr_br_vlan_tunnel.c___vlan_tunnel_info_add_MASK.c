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
typedef  int /*<<< orphan*/  u32 ;
struct net_bridge_vlan_group {int /*<<< orphan*/  tunnel_hash; } ;
struct TYPE_6__ {int /*<<< orphan*/  tunnel_id; struct metadata_dst* tunnel_dst; } ;
struct net_bridge_vlan {TYPE_3__ tinfo; int /*<<< orphan*/  tnode; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ tun_info; } ;
struct metadata_dst {int /*<<< orphan*/  dst; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int IP_TUNNEL_INFO_BRIDGE ; 
 int IP_TUNNEL_INFO_TX ; 
 int /*<<< orphan*/  TUNNEL_KEY ; 
 struct metadata_dst* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_vlan_tunnel_rht_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_bridge_vlan_group *vg,
				  struct net_bridge_vlan *vlan, u32 tun_id)
{
	struct metadata_dst *metadata = NULL;
	__be64 key = FUNC3(FUNC1(tun_id));
	int err;

	if (vlan->tinfo.tunnel_dst)
		return -EEXIST;

	metadata = FUNC0(0, 0, 0, 0, 0, TUNNEL_KEY,
				    key, 0);
	if (!metadata)
		return -EINVAL;

	metadata->u.tun_info.mode |= IP_TUNNEL_INFO_TX | IP_TUNNEL_INFO_BRIDGE;
	vlan->tinfo.tunnel_dst = metadata;
	vlan->tinfo.tunnel_id = key;

	err = FUNC4(&vg->tunnel_hash, &vlan->tnode,
					    br_vlan_tunnel_rht_params);
	if (err)
		goto out;

	return 0;
out:
	FUNC2(&vlan->tinfo.tunnel_dst->dst);
	vlan->tinfo.tunnel_dst = NULL;
	vlan->tinfo.tunnel_id = 0;

	return err;
}