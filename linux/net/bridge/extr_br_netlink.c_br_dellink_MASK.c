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
typedef  int /*<<< orphan*/  u16 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct ifinfomsg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_EBRIDGE ; 
 int /*<<< orphan*/  IFLA_AF_SPEC ; 
 int /*<<< orphan*/  RTM_DELLINK ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,struct nlattr*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_bridge*,struct net_bridge_port*) ; 
 struct net_bridge_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct nlattr* FUNC4 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev, struct nlmsghdr *nlh, u16 flags)
{
	struct net_bridge *br = (struct net_bridge *)FUNC3(dev);
	struct net_bridge_port *p;
	struct nlattr *afspec;
	bool changed = false;
	int err = 0;

	afspec = FUNC4(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
	if (!afspec)
		return 0;

	p = FUNC2(dev);
	/* We want to accept dev as bridge itself as well */
	if (!p && !(dev->priv_flags & IFF_EBRIDGE))
		return -EINVAL;

	err = FUNC0(br, p, afspec, RTM_DELLINK, &changed, NULL);
	if (changed)
		/* Send RTM_NEWLINK because userspace
		 * expects RTM_NEWLINK for vlan dels
		 */
		FUNC1(RTM_NEWLINK, br, p);

	return err;
}