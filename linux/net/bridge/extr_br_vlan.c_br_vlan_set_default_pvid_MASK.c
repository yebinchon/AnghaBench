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
typedef  scalar_t__ u16 ;
struct net_bridge {scalar_t__ default_pvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_VLAN_ENABLED ; 
 int EINVAL ; 
 int EPERM ; 
 unsigned long VLAN_VID_MASK ; 
 int FUNC0 (struct net_bridge*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct net_bridge *br, unsigned long val)
{
	u16 pvid = val;
	int err = 0;

	if (val >= VLAN_VID_MASK)
		return -EINVAL;

	if (pvid == br->default_pvid)
		goto out;

	/* Only allow default pvid change when filtering is disabled */
	if (FUNC1(br, BROPT_VLAN_ENABLED)) {
		FUNC2("Please disable vlan filtering to change default_pvid\n");
		err = -EPERM;
		goto out;
	}
	err = FUNC0(br, pvid, NULL);
out:
	return err;
}