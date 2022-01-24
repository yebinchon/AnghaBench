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
struct vtunnel_info {int flags; scalar_t__ vid; scalar_t__ tunid; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_RANGE_BEGIN ; 
 int BRIDGE_VLAN_INFO_RANGE_END ; 
 int EINVAL ; 
 int FUNC0 (struct net_bridge_port*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtunnel_info*,struct vtunnel_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vtunnel_info*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct net_bridge *br,
				struct net_bridge_port *p, int cmd,
				struct vtunnel_info *tinfo_curr,
				struct vtunnel_info *tinfo_last,
				bool *changed)
{
	int err;

	if (tinfo_curr->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN) {
		if (tinfo_last->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN)
			return -EINVAL;
		FUNC1(tinfo_last, tinfo_curr, sizeof(struct vtunnel_info));
	} else if (tinfo_curr->flags & BRIDGE_VLAN_INFO_RANGE_END) {
		int t, v;

		if (!(tinfo_last->flags & BRIDGE_VLAN_INFO_RANGE_BEGIN))
			return -EINVAL;
		if ((tinfo_curr->vid - tinfo_last->vid) !=
		    (tinfo_curr->tunid - tinfo_last->tunid))
			return -EINVAL;
		t = tinfo_last->tunid;
		for (v = tinfo_last->vid; v <= tinfo_curr->vid; v++) {
			err = FUNC0(p, cmd, v, t, changed);
			if (err)
				return err;
			t++;
		}
		FUNC2(tinfo_last, 0, sizeof(struct vtunnel_info));
		FUNC2(tinfo_curr, 0, sizeof(struct vtunnel_info));
	} else {
		if (tinfo_last->flags)
			return -EINVAL;
		err = FUNC0(p, cmd, tinfo_curr->vid,
					  tinfo_curr->tunid, changed);
		if (err)
			return err;
		FUNC2(tinfo_last, 0, sizeof(struct vtunnel_info));
		FUNC2(tinfo_curr, 0, sizeof(struct vtunnel_info));
	}

	return 0;
}