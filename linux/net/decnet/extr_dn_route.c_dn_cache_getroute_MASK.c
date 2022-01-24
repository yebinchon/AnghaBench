#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  sk; } ;
struct rtmsg {int rtm_flags; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  dn_ptr; } ;
struct net {int dummy; } ;
struct flowidn {void* flowidn_oif; void* daddr; void* dst; void* saddr; void* src; void* flowidn_iif; int /*<<< orphan*/  flowidn_proto; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {void* flowidn_oif; void* daddr; void* dst; void* saddr; void* src; void* flowidn_iif; int /*<<< orphan*/  flowidn_proto; } ;
struct TYPE_3__ {int error; } ;
struct dn_route {int /*<<< orphan*/  rt_flags; TYPE_1__ dst; } ;
typedef  int /*<<< orphan*/  fld ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNPROTO_NSP ; 
 struct flowidn* FUNC0 (struct sk_buff*) ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETH_P_DNA_RT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 size_t RTA_DST ; 
 size_t RTA_IIF ; 
 int /*<<< orphan*/  RTA_MAX ; 
 size_t RTA_OIF ; 
 size_t RTA_SRC ; 
 int /*<<< orphan*/  RTCF_NOTIFY ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct dst_entry**,struct flowidn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct flowidn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ *) ; 
 void* FUNC12 (struct nlattr*) ; 
 void* FUNC13 (struct nlattr*) ; 
 struct rtmsg* FUNC14 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_dn_policy ; 
 int FUNC17 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 struct net* FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *in_skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC21(in_skb->sk);
	struct rtmsg *rtm = FUNC14(nlh);
	struct dn_route *rt = NULL;
	struct dn_skb_cb *cb;
	int err;
	struct sk_buff *skb;
	struct flowidn fld;
	struct nlattr *tb[RTA_MAX+1];

	if (!FUNC11(net, &init_net))
		return -EINVAL;

	err = FUNC16(nlh, sizeof(*rtm), tb, RTA_MAX,
				     rtm_dn_policy, extack);
	if (err < 0)
		return err;

	FUNC10(&fld, 0, sizeof(fld));
	fld.flowidn_proto = DNPROTO_NSP;

	skb = FUNC15(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb == NULL)
		return -ENOBUFS;
	FUNC20(skb);
	cb = FUNC0(skb);

	if (tb[RTA_SRC])
		fld.saddr = FUNC12(tb[RTA_SRC]);

	if (tb[RTA_DST])
		fld.daddr = FUNC12(tb[RTA_DST]);

	if (tb[RTA_IIF])
		fld.flowidn_iif = FUNC13(tb[RTA_IIF]);

	if (fld.flowidn_iif) {
		struct net_device *dev;
		dev = FUNC2(&init_net, fld.flowidn_iif);
		if (!dev || !dev->dn_ptr) {
			FUNC7(skb);
			return -ENODEV;
		}
		skb->protocol = FUNC6(ETH_P_DNA_RT);
		skb->dev = dev;
		cb->src = fld.saddr;
		cb->dst = fld.daddr;
		FUNC8();
		err = FUNC3(skb);
		FUNC9();
		FUNC10(cb, 0, sizeof(struct dn_skb_cb));
		rt = (struct dn_route *)FUNC18(skb);
		if (!err && -rt->dst.error)
			err = rt->dst.error;
	} else {
		if (tb[RTA_OIF])
			fld.flowidn_oif = FUNC13(tb[RTA_OIF]);

		err = FUNC4((struct dst_entry **)&rt, &fld, 0);
	}

	skb->dev = NULL;
	if (err)
		goto out_free;
	FUNC19(skb, &rt->dst);
	if (rtm->rtm_flags & RTM_F_NOTIFY)
		rt->rt_flags |= RTCF_NOTIFY;

	err = FUNC5(skb, FUNC1(in_skb).portid, nlh->nlmsg_seq, RTM_NEWROUTE, 0, 0);
	if (err < 0) {
		err = -EMSGSIZE;
		goto out_free;
	}

	return FUNC17(skb, &init_net, FUNC1(in_skb).portid);

out_free:
	FUNC7(skb);
	return err;
}