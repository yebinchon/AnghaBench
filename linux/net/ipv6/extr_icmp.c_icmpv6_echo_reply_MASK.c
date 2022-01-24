#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  int /*<<< orphan*/  tmp_hdr ;
struct sock {void* sk_mark; } ;
struct sk_buff {scalar_t__ len; TYPE_6__* dev; int /*<<< orphan*/  mark; } ;
struct rt6_info {int dummy; } ;
struct TYPE_8__ {int flowlabel_reflect; scalar_t__ anycast_src_echo_reply; scalar_t__ icmpv6_echo_ignore_anycast; scalar_t__ icmpv6_echo_ignore_multicast; } ;
struct TYPE_9__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6_pinfo {scalar_t__ ucast_oif; scalar_t__ mcast_oif; } ;
struct ipcm6_cookie {int /*<<< orphan*/  tclass; int /*<<< orphan*/  hlimit; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmpv6_msg {void* type; scalar_t__ offset; struct sk_buff* skb; } ;
struct icmp6hdr {void* icmp6_type; } ;
struct flowi6 {scalar_t__ flowi6_oif; struct in6_addr daddr; int /*<<< orphan*/  flowi6_uid; void* flowi6_mark; void* fl6_icmp_type; struct in6_addr saddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  flowlabel; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl6 ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {struct in6_addr saddr; struct in6_addr daddr; } ;

/* Variables and functions */
 int FLOWLABEL_REFLECT_ICMPV6_ECHO_REPLIES ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTERRORS ; 
 void* ICMPV6_ECHO_REPLY ; 
 int IFF_LOOPBACK ; 
 void* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 scalar_t__ FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC3 (TYPE_6__*) ; 
 struct net* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi6*) ; 
 struct icmp6hdr* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  icmpv6_getfrag ; 
 int /*<<< orphan*/  FUNC9 (struct net*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct flowi6*,struct icmp6hdr*,scalar_t__) ; 
 struct sock* FUNC11 (struct net*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,void*,struct flowi6*) ; 
 struct ipv6_pinfo* FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (struct sock*,int /*<<< orphan*/ ,struct icmpv6_msg*,scalar_t__,int,struct ipcm6_cookie*,struct flowi6*,struct rt6_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct net*,struct sock*,struct dst_entry**,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct ipv6_pinfo*,struct flowi6*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC20 (struct ipcm6_cookie*,struct ipv6_pinfo*) ; 
 scalar_t__ FUNC21 (struct in6_addr*) ; 
 int FUNC22 (int /*<<< orphan*/ ,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 TYPE_3__* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (struct icmp6hdr*,struct icmp6hdr*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct net*,int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC33 (struct net*,struct dst_entry*,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC34(struct sk_buff *skb)
{
	struct net *net = FUNC4(skb->dev);
	struct sock *sk;
	struct inet6_dev *idev;
	struct ipv6_pinfo *np;
	const struct in6_addr *saddr = NULL;
	struct icmp6hdr *icmph = FUNC7(skb);
	struct icmp6hdr tmp_hdr;
	struct flowi6 fl6;
	struct icmpv6_msg msg;
	struct dst_entry *dst;
	struct ipcm6_cookie ipc6;
	u32 mark = FUNC0(net, skb->mark);
	bool acast;

	if (FUNC21(&FUNC24(skb)->daddr) &&
	    net->ipv6.sysctl.icmpv6_echo_ignore_multicast)
		return;

	saddr = &FUNC24(skb)->daddr;

	acast = FUNC22(FUNC31(skb), saddr);
	if (acast && net->ipv6.sysctl.icmpv6_echo_ignore_anycast)
		return;

	if (!FUNC25(skb) &&
	    !(net->ipv6.sysctl.anycast_src_echo_reply && acast))
		saddr = NULL;

	FUNC28(&tmp_hdr, icmph, sizeof(tmp_hdr));
	tmp_hdr.icmp6_type = ICMPV6_ECHO_REPLY;

	FUNC29(&fl6, 0, sizeof(fl6));
	if (net->ipv6.sysctl.flowlabel_reflect & FLOWLABEL_REFLECT_ICMPV6_ECHO_REPLIES)
		fl6.flowlabel = FUNC17(FUNC24(skb));

	fl6.flowi6_proto = IPPROTO_ICMPV6;
	fl6.daddr = FUNC24(skb)->saddr;
	if (saddr)
		fl6.saddr = *saddr;
	fl6.flowi6_oif = FUNC8(skb);
	fl6.fl6_icmp_type = ICMPV6_ECHO_REPLY;
	fl6.flowi6_mark = mark;
	fl6.flowi6_uid = FUNC32(net, NULL);
	FUNC30(skb, FUNC6(&fl6));

	FUNC26();
	sk = FUNC11(net);
	if (!sk)
		goto out_bh_enable;
	sk->sk_mark = mark;
	np = FUNC14(sk);

	if (!fl6.flowi6_oif && FUNC21(&fl6.daddr))
		fl6.flowi6_oif = np->mcast_oif;
	else if (!fl6.flowi6_oif)
		fl6.flowi6_oif = np->ucast_oif;

	if (FUNC16(net, sk, &dst, &fl6))
		goto out;
	dst = FUNC33(net, dst, FUNC6(&fl6), sk, 0);
	if (FUNC1(dst))
		goto out;

	/* Check the ratelimit */
	if ((!(skb->dev->flags & IFF_LOOPBACK) && !FUNC9(net, ICMPV6_ECHO_REPLY)) ||
	    !FUNC13(sk, ICMPV6_ECHO_REPLY, &fl6))
		goto out_dst_release;

	idev = FUNC3(skb->dev);

	msg.skb = skb;
	msg.offset = 0;
	msg.type = ICMPV6_ECHO_REPLY;

	FUNC20(&ipc6, np);
	ipc6.hlimit = FUNC19(np, &fl6, dst);
	ipc6.tclass = FUNC23(FUNC24(skb));

	if (FUNC15(sk, icmpv6_getfrag, &msg,
			    skb->len + sizeof(struct icmp6hdr),
			    sizeof(struct icmp6hdr), &ipc6, &fl6,
			    (struct rt6_info *)dst, MSG_DONTWAIT)) {
		FUNC2(net, idev, ICMP6_MIB_OUTERRORS);
		FUNC18(sk);
	} else {
		FUNC10(sk, &fl6, &tmp_hdr,
					   skb->len + sizeof(struct icmp6hdr));
	}
out_dst_release:
	FUNC5(dst);
out:
	FUNC12(sk);
out_bh_enable:
	FUNC27();
}