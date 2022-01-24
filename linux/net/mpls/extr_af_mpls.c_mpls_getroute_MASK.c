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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  sk; } ;
struct rtmsg {int rtm_flags; int rtm_dst_len; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; int /*<<< orphan*/  rtm_type; int /*<<< orphan*/  rtm_table; scalar_t__ rtm_src_len; int /*<<< orphan*/  rtm_family; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct mpls_shim_hdr {int dummy; } ;
struct mpls_route {int /*<<< orphan*/  rt_protocol; } ;
struct mpls_nh {int nh_labels; scalar_t__ nh_via_table; int /*<<< orphan*/  nh_dev; int /*<<< orphan*/  nh_via_alen; int /*<<< orphan*/ * nh_label; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_MPLS ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENETUNREACH ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_P_MPLS_UC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LABEL_NOT_SPECIFIED ; 
 int MAX_NEW_LABELS ; 
 scalar_t__ MPLS_NEIGH_TABLE_UNSPEC ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 size_t RTA_DST ; 
 int /*<<< orphan*/  RTA_MAX ; 
 size_t RTA_NEWDST ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int RTM_F_FIB_MATCH ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  RTN_UNICAST ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  RT_TABLE_MAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpls_route*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpls_route*,int /*<<< orphan*/ ) ; 
 struct mpls_shim_hdr FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct mpls_shim_hdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC10 (struct mpls_route*,struct mpls_nh*) ; 
 struct mpls_route* FUNC11 (struct net*,int /*<<< orphan*/ ) ; 
 struct mpls_nh* FUNC12 (struct mpls_route*,struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC14 (struct nlattr*,int,int*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC19 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC22 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*) ; 
 struct net* FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(struct sk_buff *in_skb, struct nlmsghdr *in_nlh,
			 struct netlink_ext_ack *extack)
{
	struct net *net = FUNC30(in_skb->sk);
	u32 portid = FUNC0(in_skb).portid;
	u32 in_label = LABEL_NOT_SPECIFIED;
	struct nlattr *tb[RTA_MAX + 1];
	u32 labels[MAX_NEW_LABELS];
	struct mpls_shim_hdr *hdr;
	unsigned int hdr_size = 0;
	struct net_device *dev;
	struct mpls_route *rt;
	struct rtmsg *rtm, *r;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	struct mpls_nh *nh;
	u8 n_labels;
	int err;

	err = FUNC13(in_skb, in_nlh, tb, extack);
	if (err < 0)
		goto errout;

	rtm = FUNC19(in_nlh);

	if (tb[RTA_DST]) {
		u8 label_count;

		if (FUNC14(tb[RTA_DST], 1, &label_count,
				   &in_label, extack)) {
			err = -EINVAL;
			goto errout;
		}

		if (!FUNC9(net, &in_label, extack)) {
			err = -EINVAL;
			goto errout;
		}
	}

	rt = FUNC11(net, in_label);
	if (!rt) {
		err = -ENETUNREACH;
		goto errout;
	}

	if (rtm->rtm_flags & RTM_F_FIB_MATCH) {
		skb = FUNC21(FUNC5(rt), GFP_KERNEL);
		if (!skb) {
			err = -ENOBUFS;
			goto errout;
		}

		err = FUNC6(skb, portid, in_nlh->nlmsg_seq,
				      RTM_NEWROUTE, in_label, rt, 0);
		if (err < 0) {
			/* -EMSGSIZE implies BUG in lfib_nlmsg_size */
			FUNC1(err == -EMSGSIZE);
			goto errout_free;
		}

		return FUNC24(skb, net, portid);
	}

	if (tb[RTA_NEWDST]) {
		if (FUNC14(tb[RTA_NEWDST], MAX_NEW_LABELS, &n_labels,
				   labels, extack) != 0) {
			err = -EINVAL;
			goto errout;
		}

		hdr_size = n_labels * sizeof(struct mpls_shim_hdr);
	}

	skb = FUNC2(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb) {
		err = -ENOBUFS;
		goto errout;
	}

	skb->protocol = FUNC3(ETH_P_MPLS_UC);

	if (hdr_size) {
		bool bos;
		int i;

		if (FUNC25(skb, hdr_size)) {
			err = -ENOBUFS;
			goto errout_free;
		}

		FUNC28(skb, hdr_size);
		FUNC27(skb, hdr_size);
		FUNC29(skb);

		/* Push new labels */
		hdr = FUNC8(skb);
		bos = true;
		for (i = n_labels - 1; i >= 0; i--) {
			hdr[i] = FUNC7(labels[i],
						   1, 0, bos);
			bos = false;
		}
	}

	nh = FUNC12(rt, skb);
	if (!nh) {
		err = -ENETUNREACH;
		goto errout_free;
	}

	if (hdr_size) {
		FUNC26(skb, hdr_size);
		FUNC29(skb);
	}

	nlh = FUNC22(skb, portid, in_nlh->nlmsg_seq,
			RTM_NEWROUTE, sizeof(*r), 0);
	if (!nlh) {
		err = -EMSGSIZE;
		goto errout_free;
	}

	r = FUNC19(nlh);
	r->rtm_family	 = AF_MPLS;
	r->rtm_dst_len	= 20;
	r->rtm_src_len	= 0;
	r->rtm_table	= RT_TABLE_MAIN;
	r->rtm_type	= RTN_UNICAST;
	r->rtm_scope	= RT_SCOPE_UNIVERSE;
	r->rtm_protocol = rt->rt_protocol;
	r->rtm_flags	= 0;

	if (FUNC15(skb, RTA_DST, 1, &in_label))
		goto nla_put_failure;

	if (nh->nh_labels &&
	    FUNC15(skb, RTA_NEWDST, nh->nh_labels,
			   nh->nh_label))
		goto nla_put_failure;

	if (nh->nh_via_table != MPLS_NEIGH_TABLE_UNSPEC &&
	    FUNC17(skb, nh->nh_via_table, FUNC10(rt, nh),
			nh->nh_via_alen))
		goto nla_put_failure;
	dev = FUNC23(nh->nh_dev);
	if (dev && FUNC16(skb, RTA_OIF, dev->ifindex))
		goto nla_put_failure;

	FUNC20(skb, nlh);

	err = FUNC24(skb, net, portid);
errout:
	return err;

nla_put_failure:
	FUNC18(skb, nlh);
	err = -EMSGSIZE;
errout_free:
	FUNC4(skb);
	return err;
}