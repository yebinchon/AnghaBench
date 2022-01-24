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
struct ovs_net {int xt_label; } ;
struct net {int dummy; } ;
typedef  enum ovs_key_attr { ____Placeholder_ovs_key_attr } ovs_key_attr ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_LABELS ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_MARK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_ZONES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int OVS_KEY_ATTR_CT_LABELS ; 
 int OVS_KEY_ATTR_CT_MARK ; 
 int OVS_KEY_ATTR_CT_STATE ; 
 int OVS_KEY_ATTR_CT_ZONE ; 
 struct ovs_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_net_id ; 

bool FUNC2(struct net *net, enum ovs_key_attr attr)
{
	if (attr == OVS_KEY_ATTR_CT_STATE)
		return true;
	if (FUNC0(CONFIG_NF_CONNTRACK_ZONES) &&
	    attr == OVS_KEY_ATTR_CT_ZONE)
		return true;
	if (FUNC0(CONFIG_NF_CONNTRACK_MARK) &&
	    attr == OVS_KEY_ATTR_CT_MARK)
		return true;
	if (FUNC0(CONFIG_NF_CONNTRACK_LABELS) &&
	    attr == OVS_KEY_ATTR_CT_LABELS) {
		struct ovs_net *ovs_net = FUNC1(net, ovs_net_id);

		return ovs_net->xt_label;
	}

	return false;
}