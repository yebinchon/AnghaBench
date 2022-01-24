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
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct pneigh_entry {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int NTF_PROXY ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 int FUNC3 (struct net*,struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC4 (struct neigh_table*,void*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 
 int FUNC6 (struct nlmsghdr*,struct neigh_table**,void**,int*,int*,struct netlink_ext_ack*) ; 
 int FUNC7 (struct net*,struct pneigh_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct neigh_table*) ; 
 struct pneigh_entry* FUNC8 (struct neigh_table*,struct net*,void*,struct net_device*,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *in_skb, struct nlmsghdr *nlh,
		     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC9(in_skb->sk);
	struct net_device *dev = NULL;
	struct neigh_table *tbl = NULL;
	struct neighbour *neigh;
	void *dst = NULL;
	u8 ndm_flags = 0;
	int dev_idx = 0;
	int err;

	err = FUNC6(nlh, &tbl, &dst, &dev_idx, &ndm_flags,
				  extack);
	if (err < 0)
		return err;

	if (dev_idx) {
		dev = FUNC2(net, dev_idx);
		if (!dev) {
			FUNC1(extack, "Unknown device ifindex");
			return -ENODEV;
		}
	}

	if (!dst) {
		FUNC1(extack, "Network address not specified");
		return -EINVAL;
	}

	if (ndm_flags & NTF_PROXY) {
		struct pneigh_entry *pn;

		pn = FUNC8(tbl, net, dst, dev, 0);
		if (!pn) {
			FUNC1(extack, "Proxy neighbour entry not found");
			return -ENOENT;
		}
		return FUNC7(net, pn, FUNC0(in_skb).portid,
					nlh->nlmsg_seq, tbl);
	}

	if (!dev) {
		FUNC1(extack, "No device specified");
		return -EINVAL;
	}

	neigh = FUNC4(tbl, dst, dev);
	if (!neigh) {
		FUNC1(extack, "Neighbour entry not found");
		return -ENOENT;
	}

	err = FUNC3(net, neigh, FUNC0(in_skb).portid,
			      nlh->nlmsg_seq);

	FUNC5(neigh);

	return err;
}