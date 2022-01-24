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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {int /*<<< orphan*/  lock; scalar_t__ key_len; } ;
struct ndmsg {int ndm_flags; int /*<<< orphan*/  ndm_family; scalar_t__ ndm_ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  NDA_DST ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,char*) ; 
 int NTF_PROXY ; 
 int /*<<< orphan*/  NUD_FAILED ; 
 struct net_device* FUNC3 (struct net*,scalar_t__) ; 
 int FUNC4 (struct neighbour*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct neigh_table* FUNC5 (int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC6 (struct neigh_table*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*,struct neigh_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlattr*) ; 
 struct ndmsg* FUNC11 (struct nlmsghdr*) ; 
 struct nlattr* FUNC12 (struct nlmsghdr*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nlmsghdr*) ; 
 int FUNC14 (struct neigh_table*,struct net*,int /*<<< orphan*/ ,struct net_device*) ; 
 struct net* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC15(skb->sk);
	struct ndmsg *ndm;
	struct nlattr *dst_attr;
	struct neigh_table *tbl;
	struct neighbour *neigh;
	struct net_device *dev = NULL;
	int err = -EINVAL;

	FUNC0();
	if (FUNC13(nlh) < sizeof(*ndm))
		goto out;

	dst_attr = FUNC12(nlh, sizeof(*ndm), NDA_DST);
	if (!dst_attr) {
		FUNC2(extack, "Network address not specified");
		goto out;
	}

	ndm = FUNC11(nlh);
	if (ndm->ndm_ifindex) {
		dev = FUNC3(net, ndm->ndm_ifindex);
		if (dev == NULL) {
			err = -ENODEV;
			goto out;
		}
	}

	tbl = FUNC5(ndm->ndm_family);
	if (tbl == NULL)
		return -EAFNOSUPPORT;

	if (FUNC10(dst_attr) < (int)tbl->key_len) {
		FUNC2(extack, "Invalid network address");
		goto out;
	}

	if (ndm->ndm_flags & NTF_PROXY) {
		err = FUNC14(tbl, net, FUNC9(dst_attr), dev);
		goto out;
	}

	if (dev == NULL)
		goto out;

	neigh = FUNC6(tbl, FUNC9(dst_attr), dev);
	if (neigh == NULL) {
		err = -ENOENT;
		goto out;
	}

	err = FUNC4(neigh, NULL, NUD_FAILED,
			     NEIGH_UPDATE_F_OVERRIDE | NEIGH_UPDATE_F_ADMIN,
			     FUNC1(skb).portid, extack);
	FUNC16(&tbl->lock);
	FUNC7(neigh);
	FUNC8(neigh, tbl);
	FUNC17(&tbl->lock);

out:
	return err;
}