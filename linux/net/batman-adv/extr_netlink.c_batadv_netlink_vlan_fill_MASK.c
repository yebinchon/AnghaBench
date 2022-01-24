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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct batadv_softif_vlan {int vid; int /*<<< orphan*/  ap_isolation; } ;
struct batadv_priv {TYPE_1__* soft_iface; } ;
typedef  enum batadv_nl_commands { ____Placeholder_batadv_nl_commands } batadv_nl_commands ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_AP_ISOLATION_ENABLED ; 
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 int /*<<< orphan*/  BATADV_ATTR_VLANID ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *msg,
				    struct batadv_priv *bat_priv,
				    struct batadv_softif_vlan *vlan,
				    enum batadv_nl_commands cmd,
				    u32 portid, u32 seq, int flags)
{
	void *hdr;

	hdr = FUNC3(msg, portid, seq, &batadv_netlink_family, flags, cmd);
	if (!hdr)
		return -ENOBUFS;

	if (FUNC4(msg, BATADV_ATTR_MESH_IFINDEX,
			bat_priv->soft_iface->ifindex))
		goto nla_put_failure;

	if (FUNC4(msg, BATADV_ATTR_VLANID, vlan->vid & VLAN_VID_MASK))
		goto nla_put_failure;

	if (FUNC5(msg, BATADV_ATTR_AP_ISOLATION_ENABLED,
		       !!FUNC0(&vlan->ap_isolation)))
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return 0;

nla_put_failure:
	FUNC1(msg, hdr);
	return -EMSGSIZE;
}