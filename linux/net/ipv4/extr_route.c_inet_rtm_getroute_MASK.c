#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sk_buff {int mark; struct net_device* dev; int /*<<< orphan*/  sk; } ;
struct rtmsg {int rtm_flags; int /*<<< orphan*/  rtm_tos; } ;
struct TYPE_6__ {int error; } ;
struct rtable {int /*<<< orphan*/  rt_type; int /*<<< orphan*/  rt_flags; TYPE_2__ dst; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {struct net_device* loopback_dev; } ;
struct flowi4 {int flowi4_mark; int flowi4_iif; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_proto; void* fl4_dport; void* fl4_sport; int /*<<< orphan*/  flowi4_uid; void* flowi4_oif; void* saddr; void* daddr; } ;
struct fib_result {size_t type; int /*<<< orphan*/  fi; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  prefix; TYPE_1__* table; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  void* __be32 ;
typedef  void* __be16 ;
struct TYPE_8__ {int /*<<< orphan*/  portid; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_5__ {int tb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EHOSTUNREACH ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  INVALID_UID ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int LOOPBACK_IFINDEX ; 
 TYPE_4__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct rtable*) ; 
 size_t RTA_DPORT ; 
 size_t RTA_DST ; 
 size_t RTA_IIF ; 
 size_t RTA_IP_PROTO ; 
 size_t RTA_MARK ; 
 int /*<<< orphan*/  RTA_MAX ; 
 size_t RTA_OIF ; 
 size_t RTA_SPORT ; 
 size_t RTA_SRC ; 
 size_t RTA_UID ; 
 int /*<<< orphan*/  RTCF_NOTIFY ; 
 int RTM_F_FIB_MATCH ; 
 int RTM_F_LOOKUP_TABLE ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int RT_TABLE_MAIN ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct net_device* FUNC5 (struct net*,int) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* fib_props ; 
 struct sk_buff* FUNC7 (void*,void*,int /*<<< orphan*/ ,void*,void*) ; 
 int FUNC8 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int FUNC9 (struct sk_buff*,void*,void*,int /*<<< orphan*/ ,struct net_device*,struct fib_result*) ; 
 struct rtable* FUNC10 (struct net*,struct flowi4*,struct fib_result*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC13 (struct nlattr*) ; 
 void* FUNC14 (struct nlattr*) ; 
 void* FUNC15 (struct nlattr*) ; 
 struct rtmsg* FUNC16 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (struct net*,void*,void*,struct rtable*,int,struct flowi4*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC21 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 struct rtable* FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct sk_buff *in_skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct net *net = FUNC28(in_skb->sk);
	struct nlattr *tb[RTA_MAX+1];
	u32 table_id = RT_TABLE_MAIN;
	__be16 sport = 0, dport = 0;
	struct fib_result res = {};
	u8 ip_proto = IPPROTO_UDP;
	struct rtable *rt = NULL;
	struct sk_buff *skb;
	struct rtmsg *rtm;
	struct flowi4 fl4 = {};
	__be32 dst = 0;
	__be32 src = 0;
	kuid_t uid;
	u32 iif;
	int err;
	int mark;

	err = FUNC8(in_skb, nlh, tb, extack);
	if (err < 0)
		return err;

	rtm = FUNC16(nlh);
	src = tb[RTA_SRC] ? FUNC14(tb[RTA_SRC]) : 0;
	dst = tb[RTA_DST] ? FUNC14(tb[RTA_DST]) : 0;
	iif = tb[RTA_IIF] ? FUNC15(tb[RTA_IIF]) : 0;
	mark = tb[RTA_MARK] ? FUNC15(tb[RTA_MARK]) : 0;
	if (tb[RTA_UID])
		uid = FUNC12(FUNC4(), FUNC15(tb[RTA_UID]));
	else
		uid = (iif ? INVALID_UID : FUNC3());

	if (tb[RTA_IP_PROTO]) {
		err = FUNC20(tb[RTA_IP_PROTO],
						  &ip_proto, AF_INET, extack);
		if (err)
			return err;
	}

	if (tb[RTA_SPORT])
		sport = FUNC13(tb[RTA_SPORT]);

	if (tb[RTA_DPORT])
		dport = FUNC13(tb[RTA_DPORT]);

	skb = FUNC7(src, dst, ip_proto, sport, dport);
	if (!skb)
		return -ENOBUFS;

	fl4.daddr = dst;
	fl4.saddr = src;
	fl4.flowi4_tos = rtm->rtm_tos;
	fl4.flowi4_oif = tb[RTA_OIF] ? FUNC15(tb[RTA_OIF]) : 0;
	fl4.flowi4_mark = mark;
	fl4.flowi4_uid = uid;
	if (sport)
		fl4.fl4_sport = sport;
	if (dport)
		fl4.fl4_dport = dport;
	fl4.flowi4_proto = ip_proto;

	FUNC17();

	if (iif) {
		struct net_device *dev;

		dev = FUNC5(net, iif);
		if (!dev) {
			err = -ENODEV;
			goto errout_rcu;
		}

		fl4.flowi4_iif = iif; /* for rt_fill_info */
		skb->dev	= dev;
		skb->mark	= mark;
		err = FUNC9(skb, dst, src, rtm->rtm_tos,
					 dev, &res);

		rt = FUNC26(skb);
		if (err == 0 && rt->dst.error)
			err = -rt->dst.error;
	} else {
		fl4.flowi4_iif = LOOPBACK_IFINDEX;
		skb->dev = net->loopback_dev;
		rt = FUNC10(net, &fl4, &res, skb);
		err = 0;
		if (FUNC0(rt))
			err = FUNC2(rt);
		else
			FUNC22(skb, &rt->dst);
	}

	if (err)
		goto errout_rcu;

	if (rtm->rtm_flags & RTM_F_NOTIFY)
		rt->rt_flags |= RTCF_NOTIFY;

	if (rtm->rtm_flags & RTM_F_LOOKUP_TABLE)
		table_id = res.table ? res.table->tb_id : 0;

	/* reset skb for netlink reply msg */
	FUNC27(skb, 0);
	FUNC24(skb);
	FUNC25(skb);
	FUNC23(skb);

	if (rtm->rtm_flags & RTM_F_FIB_MATCH) {
		if (!res.fi) {
			err = fib_props[res.type].error;
			if (!err)
				err = -EHOSTUNREACH;
			goto errout_rcu;
		}
		err = FUNC6(skb, FUNC1(in_skb).portid,
				    nlh->nlmsg_seq, RTM_NEWROUTE, table_id,
				    rt->rt_type, res.prefix, res.prefixlen,
				    fl4.flowi4_tos, res.fi, 0);
	} else {
		err = FUNC19(net, dst, src, rt, table_id, &fl4, skb,
				   FUNC1(in_skb).portid,
				   nlh->nlmsg_seq, 0);
	}
	if (err < 0)
		goto errout_rcu;

	FUNC18();

	err = FUNC21(skb, net, FUNC1(in_skb).portid);

errout_free:
	return err;
errout_rcu:
	FUNC18();
	FUNC11(skb);
	goto errout_free;
}