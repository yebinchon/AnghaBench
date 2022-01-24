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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; int /*<<< orphan*/  dev_addr; scalar_t__ addr_len; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  operstate; } ;
struct net_bridge_vlan_group {int /*<<< orphan*/  num_vlans; } ;
struct net_bridge_port {int flags; struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int /*<<< orphan*/  ifi_flags; int /*<<< orphan*/  ifi_type; scalar_t__ __ifi_pad; int /*<<< orphan*/  ifi_family; } ;
struct TYPE_2__ {scalar_t__ ifindex; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BRIDGE ; 
 int BR_VLAN_TUNNEL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_ADDRESS ; 
 int /*<<< orphan*/  IFLA_AF_SPEC ; 
 int /*<<< orphan*/  IFLA_IFNAME ; 
 int /*<<< orphan*/  IFLA_LINK ; 
 int /*<<< orphan*/  IFLA_MASTER ; 
 int /*<<< orphan*/  IFLA_MTU ; 
 int /*<<< orphan*/  IFLA_OPERSTATE ; 
 int /*<<< orphan*/  IFLA_PROTINFO ; 
 int /*<<< orphan*/  IF_OPER_DOWN ; 
 int RTEXT_FILTER_BRVLAN ; 
 int RTEXT_FILTER_BRVLAN_COMPRESSED ; 
 int RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,struct net_bridge_vlan_group*) ; 
 int FUNC2 (struct sk_buff*,struct net_bridge_vlan_group*) ; 
 int FUNC3 (struct sk_buff*,struct net_bridge_vlan_group*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct net_bridge_port const*) ; 
 struct net_bridge_vlan_group* FUNC5 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device const*) ; 
 scalar_t__ FUNC7 (struct net_device const*) ; 
 struct net_bridge_vlan_group* FUNC8 (struct net_bridge_port const*) ; 
 struct net_bridge* FUNC9 (struct net_device const*) ; 
 scalar_t__ FUNC10 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct nlmsghdr*) ; 
 struct ifinfomsg* FUNC19 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC21 (struct sk_buff*,int,int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static int FUNC24(struct sk_buff *skb,
			  const struct net_bridge_port *port,
			  u32 pid, u32 seq, int event, unsigned int flags,
			  u32 filter_mask, const struct net_device *dev)
{
	u8 operstate = FUNC10(dev) ? dev->operstate : IF_OPER_DOWN;
	struct net_bridge *br;
	struct ifinfomsg *hdr;
	struct nlmsghdr *nlh;

	if (port)
		br = port->br;
	else
		br = FUNC9(dev);

	FUNC0(br, "br_fill_info event %d port %s master %s\n",
		     event, dev->name, br->dev->name);

	nlh = FUNC21(skb, pid, seq, event, sizeof(*hdr), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	hdr = FUNC19(nlh);
	hdr->ifi_family = AF_BRIDGE;
	hdr->__ifi_pad = 0;
	hdr->ifi_type = dev->type;
	hdr->ifi_index = dev->ifindex;
	hdr->ifi_flags = FUNC6(dev);
	hdr->ifi_change = 0;

	if (FUNC15(skb, IFLA_IFNAME, dev->name) ||
	    FUNC16(skb, IFLA_MASTER, br->dev->ifindex) ||
	    FUNC16(skb, IFLA_MTU, dev->mtu) ||
	    FUNC17(skb, IFLA_OPERSTATE, operstate) ||
	    (dev->addr_len &&
	     FUNC14(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr)) ||
	    (dev->ifindex != FUNC7(dev) &&
	     FUNC16(skb, IFLA_LINK, FUNC7(dev))))
		goto nla_put_failure;

	if (event == RTM_NEWLINK && port) {
		struct nlattr *nest;

		nest = FUNC12(skb, IFLA_PROTINFO);
		if (nest == NULL || FUNC4(skb, port) < 0)
			goto nla_put_failure;
		FUNC11(skb, nest);
	}

	/* Check if  the VID information is requested */
	if ((filter_mask & RTEXT_FILTER_BRVLAN) ||
	    (filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED)) {
		struct net_bridge_vlan_group *vg;
		struct nlattr *af;
		int err;

		/* RCU needed because of the VLAN locking rules (rcu || rtnl) */
		FUNC22();
		if (port)
			vg = FUNC8(port);
		else
			vg = FUNC5(br);

		if (!vg || !vg->num_vlans) {
			FUNC23();
			goto done;
		}
		af = FUNC13(skb, IFLA_AF_SPEC);
		if (!af) {
			FUNC23();
			goto nla_put_failure;
		}
		if (filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED)
			err = FUNC2(skb, vg);
		else
			err = FUNC1(skb, vg);

		if (port && (port->flags & BR_VLAN_TUNNEL))
			err = FUNC3(skb, vg);
		FUNC23();
		if (err)
			goto nla_put_failure;
		FUNC11(skb, af);
	}

done:
	FUNC20(skb, nlh);
	return 0;

nla_put_failure:
	FUNC18(skb, nlh);
	return -EMSGSIZE;
}