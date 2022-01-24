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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int nla_type; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; } ;
struct net_bridge {int dummy; } ;
struct ifinfomsg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IFLA_AF_SPEC ; 
 int /*<<< orphan*/  IFLA_BRPORT_MAX ; 
 int /*<<< orphan*/  IFLA_PROTINFO ; 
 int NLA_F_NESTED ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  RTM_SETLINK ; 
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,struct nlattr*,int /*<<< orphan*/ ,int*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_bridge*,struct net_bridge_port*) ; 
 struct net_bridge_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  br_port_policy ; 
 int FUNC3 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_bridge_port*,struct nlattr**) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nlattr* FUNC9 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
	       struct netlink_ext_ack *extack)
{
	struct net_bridge *br = (struct net_bridge *)FUNC5(dev);
	struct nlattr *tb[IFLA_BRPORT_MAX + 1];
	struct net_bridge_port *p;
	struct nlattr *protinfo;
	struct nlattr *afspec;
	bool changed = false;
	int err = 0;

	protinfo = FUNC9(nlh, sizeof(struct ifinfomsg), IFLA_PROTINFO);
	afspec = FUNC9(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
	if (!protinfo && !afspec)
		return 0;

	p = FUNC2(dev);
	/* We want to accept dev as bridge itself if the AF_SPEC
	 * is set to see if someone is setting vlan info on the bridge
	 */
	if (!p && !afspec)
		return -EINVAL;

	if (p && protinfo) {
		if (protinfo->nla_type & NLA_F_NESTED) {
			err = FUNC8(tb, IFLA_BRPORT_MAX,
							  protinfo,
							  br_port_policy,
							  NULL);
			if (err)
				return err;

			FUNC10(&p->br->lock);
			err = FUNC4(p, tb);
			FUNC11(&p->br->lock);
		} else {
			/* Binary compatibility with old RSTP */
			if (FUNC7(protinfo) < sizeof(u8))
				return -EINVAL;

			FUNC10(&p->br->lock);
			err = FUNC3(p, FUNC6(protinfo));
			FUNC11(&p->br->lock);
		}
		if (err)
			goto out;
		changed = true;
	}

	if (afspec)
		err = FUNC0(br, p, afspec, RTM_SETLINK, &changed, extack);

	if (changed)
		FUNC1(RTM_NEWLINK, br, p);
out:
	return err;
}