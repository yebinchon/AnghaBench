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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct vtunnel_info {scalar_t__ flags; scalar_t__ vid; int /*<<< orphan*/  tunid; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 size_t IFLA_BRIDGE_VLAN_TUNNEL_FLAGS ; 
 size_t IFLA_BRIDGE_VLAN_TUNNEL_ID ; 
 int /*<<< orphan*/  IFLA_BRIDGE_VLAN_TUNNEL_MAX ; 
 size_t IFLA_BRIDGE_VLAN_TUNNEL_VID ; 
 scalar_t__ VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct vtunnel_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_tunnel_policy ; 

int FUNC4(struct nlattr *attr,
			      struct vtunnel_info *tinfo)
{
	struct nlattr *tb[IFLA_BRIDGE_VLAN_TUNNEL_MAX + 1];
	u32 tun_id;
	u16 vid, flags = 0;
	int err;

	FUNC0(tinfo, 0, sizeof(*tinfo));

	err = FUNC3(tb, IFLA_BRIDGE_VLAN_TUNNEL_MAX,
					  attr, vlan_tunnel_policy, NULL);
	if (err < 0)
		return err;

	if (!tb[IFLA_BRIDGE_VLAN_TUNNEL_ID] ||
	    !tb[IFLA_BRIDGE_VLAN_TUNNEL_VID])
		return -EINVAL;

	tun_id = FUNC2(tb[IFLA_BRIDGE_VLAN_TUNNEL_ID]);
	vid = FUNC1(tb[IFLA_BRIDGE_VLAN_TUNNEL_VID]);
	if (vid >= VLAN_VID_MASK)
		return -ERANGE;

	if (tb[IFLA_BRIDGE_VLAN_TUNNEL_FLAGS])
		flags = FUNC1(tb[IFLA_BRIDGE_VLAN_TUNNEL_FLAGS]);

	tinfo->tunid = tun_id;
	tinfo->vid = vid;
	tinfo->flags = flags;

	return 0;
}