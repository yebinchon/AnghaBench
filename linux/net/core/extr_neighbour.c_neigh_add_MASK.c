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
typedef  void* u8 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct pneigh_entry {int flags; void* protocol; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int addr_len; } ;
struct net {int dummy; } ;
struct neighbour {void* protocol; } ;
struct neigh_table {int /*<<< orphan*/  (* allow_add ) (struct net_device*,struct netlink_ext_ack*) ;scalar_t__ key_len; } ;
struct ndmsg {int ndm_flags; int ndm_state; int /*<<< orphan*/  ndm_family; scalar_t__ ndm_ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EAFNOSUPPORT ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct neighbour*) ; 
 size_t NDA_DST ; 
 size_t NDA_LLADDR ; 
 int /*<<< orphan*/  NDA_MAX ; 
 size_t NDA_PROTOCOL ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_EXT_LEARNED ; 
 int NEIGH_UPDATE_F_ISROUTER ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int NEIGH_UPDATE_F_OVERRIDE_ISROUTER ; 
 TYPE_1__ FUNC2 (struct sk_buff*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,char*) ; 
 int NTF_EXT_LEARNED ; 
 int NTF_PROXY ; 
 int NTF_ROUTER ; 
 int NTF_USE ; 
 int NUD_PERMANENT ; 
 int FUNC4 (struct neighbour*) ; 
 struct neighbour* FUNC5 (struct neigh_table*,void*,struct net_device*,int,int) ; 
 struct net_device* FUNC6 (struct net*,scalar_t__) ; 
 int FUNC7 (struct neighbour*,void*,int,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  nda_policy ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*,int /*<<< orphan*/ *) ; 
 struct neigh_table* FUNC9 (int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC10 (struct neigh_table*,void*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct neighbour*) ; 
 int /*<<< orphan*/ * FUNC12 (struct nlattr*) ; 
 void* FUNC13 (struct nlattr*) ; 
 int FUNC14 (struct nlattr*) ; 
 struct ndmsg* FUNC15 (struct nlmsghdr*) ; 
 int FUNC16 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct pneigh_entry* FUNC17 (struct neigh_table*,struct net*,void*,struct net_device*,int) ; 
 struct net* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct nlmsghdr *nlh,
		     struct netlink_ext_ack *extack)
{
	int flags = NEIGH_UPDATE_F_ADMIN | NEIGH_UPDATE_F_OVERRIDE |
		NEIGH_UPDATE_F_OVERRIDE_ISROUTER;
	struct net *net = FUNC18(skb->sk);
	struct ndmsg *ndm;
	struct nlattr *tb[NDA_MAX+1];
	struct neigh_table *tbl;
	struct net_device *dev = NULL;
	struct neighbour *neigh;
	void *dst, *lladdr;
	u8 protocol = 0;
	int err;

	FUNC0();
	err = FUNC16(nlh, sizeof(*ndm), tb, NDA_MAX,
				     nda_policy, extack);
	if (err < 0)
		goto out;

	err = -EINVAL;
	if (!tb[NDA_DST]) {
		FUNC3(extack, "Network address not specified");
		goto out;
	}

	ndm = FUNC15(nlh);
	if (ndm->ndm_ifindex) {
		dev = FUNC6(net, ndm->ndm_ifindex);
		if (dev == NULL) {
			err = -ENODEV;
			goto out;
		}

		if (tb[NDA_LLADDR] && FUNC14(tb[NDA_LLADDR]) < dev->addr_len) {
			FUNC3(extack, "Invalid link address");
			goto out;
		}
	}

	tbl = FUNC9(ndm->ndm_family);
	if (tbl == NULL)
		return -EAFNOSUPPORT;

	if (FUNC14(tb[NDA_DST]) < (int)tbl->key_len) {
		FUNC3(extack, "Invalid network address");
		goto out;
	}

	dst = FUNC12(tb[NDA_DST]);
	lladdr = tb[NDA_LLADDR] ? FUNC12(tb[NDA_LLADDR]) : NULL;

	if (tb[NDA_PROTOCOL])
		protocol = FUNC13(tb[NDA_PROTOCOL]);

	if (ndm->ndm_flags & NTF_PROXY) {
		struct pneigh_entry *pn;

		err = -ENOBUFS;
		pn = FUNC17(tbl, net, dst, dev, 1);
		if (pn) {
			pn->flags = ndm->ndm_flags;
			if (protocol)
				pn->protocol = protocol;
			err = 0;
		}
		goto out;
	}

	if (!dev) {
		FUNC3(extack, "Device not specified");
		goto out;
	}

	if (tbl->allow_add && !tbl->allow_add(dev, extack)) {
		err = -EINVAL;
		goto out;
	}

	neigh = FUNC10(tbl, dst, dev);
	if (neigh == NULL) {
		bool exempt_from_gc;

		if (!(nlh->nlmsg_flags & NLM_F_CREATE)) {
			err = -ENOENT;
			goto out;
		}

		exempt_from_gc = ndm->ndm_state & NUD_PERMANENT ||
				 ndm->ndm_flags & NTF_EXT_LEARNED;
		neigh = FUNC5(tbl, dst, dev, exempt_from_gc, true);
		if (FUNC1(neigh)) {
			err = FUNC4(neigh);
			goto out;
		}
	} else {
		if (nlh->nlmsg_flags & NLM_F_EXCL) {
			err = -EEXIST;
			FUNC11(neigh);
			goto out;
		}

		if (!(nlh->nlmsg_flags & NLM_F_REPLACE))
			flags &= ~(NEIGH_UPDATE_F_OVERRIDE |
				   NEIGH_UPDATE_F_OVERRIDE_ISROUTER);
	}

	if (ndm->ndm_flags & NTF_EXT_LEARNED)
		flags |= NEIGH_UPDATE_F_EXT_LEARNED;

	if (ndm->ndm_flags & NTF_ROUTER)
		flags |= NEIGH_UPDATE_F_ISROUTER;

	if (ndm->ndm_flags & NTF_USE) {
		FUNC8(neigh, NULL);
		err = 0;
	} else
		err = FUNC7(neigh, lladdr, ndm->ndm_state, flags,
				     FUNC2(skb).portid, extack);

	if (protocol)
		neigh->protocol = protocol;

	FUNC11(neigh);

out:
	return err;
}