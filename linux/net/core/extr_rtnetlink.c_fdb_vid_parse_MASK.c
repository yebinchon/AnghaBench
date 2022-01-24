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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ VLAN_VID_MASK ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct nlattr *vlan_attr, u16 *p_vid,
			 struct netlink_ext_ack *extack)
{
	u16 vid = 0;

	if (vlan_attr) {
		if (FUNC2(vlan_attr) != sizeof(u16)) {
			FUNC0(extack, "invalid vlan attribute size");
			return -EINVAL;
		}

		vid = FUNC1(vlan_attr);

		if (!vid || vid >= VLAN_VID_MASK) {
			FUNC0(extack, "invalid vlan id");
			return -EINVAL;
		}
	}
	*p_vid = vid;
	return 0;
}