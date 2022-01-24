#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockcm_cookie {int /*<<< orphan*/  tsflags; int /*<<< orphan*/  transmit_time; int /*<<< orphan*/  mark; } ;
struct sock {int /*<<< orphan*/  sk_priority; } ;
struct sk_buff {unsigned int transport_header; unsigned int network_header; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;
struct iphdr {int ihl; scalar_t__ protocol; scalar_t__ check; int /*<<< orphan*/  id; int /*<<< orphan*/  tot_len; scalar_t__ saddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  inet_dport; } ;
struct icmphdr {int /*<<< orphan*/  type; } ;
struct flowi4 {scalar_t__ saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_5__ {size_t mtu; int needed_tailroom; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EFAULT ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 unsigned int MSG_CONFIRM ; 
 unsigned int MSG_DONTWAIT ; 
 unsigned int MSG_PROBE ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (unsigned char*,int) ; 
 struct iphdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct iphdr*,struct msghdr*,size_t) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 struct sk_buff* FUNC20 (struct sock*,size_t,unsigned int,int*) ; 
 struct net* FUNC21 (struct sock*) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct flowi4 *fl4,
			   struct msghdr *msg, size_t length,
			   struct rtable **rtp, unsigned int flags,
			   const struct sockcm_cookie *sockc)
{
	struct inet_sock *inet = FUNC5(sk);
	struct net *net = FUNC21(sk);
	struct iphdr *iph;
	struct sk_buff *skb;
	unsigned int iphlen;
	int err;
	struct rtable *rt = *rtp;
	int hlen, tlen;

	if (length > rt->dst.dev->mtu) {
		FUNC8(sk, EMSGSIZE, fl4->daddr, inet->inet_dport,
			       rt->dst.dev->mtu);
		return -EMSGSIZE;
	}
	if (length < sizeof(struct iphdr))
		return -EINVAL;

	if (flags&MSG_PROBE)
		goto out;

	hlen = FUNC1(rt->dst.dev);
	tlen = rt->dst.dev->needed_tailroom;
	skb = FUNC20(sk,
				  length + hlen + tlen + 15,
				  flags & MSG_DONTWAIT, &err);
	if (!skb)
		goto error;
	FUNC15(skb, hlen);

	skb->priority = sk->sk_priority;
	skb->mark = sockc->mark;
	skb->tstamp = sockc->transmit_time;
	FUNC13(skb, &rt->dst);
	*rtp = NULL;

	FUNC16(skb);
	iph = FUNC7(skb);
	FUNC14(skb, length);

	skb->ip_summed = CHECKSUM_NONE;

	FUNC18(skb, sockc->tsflags);

	if (flags & MSG_CONFIRM)
		FUNC17(skb, 1);

	skb->transport_header = skb->network_header;
	err = -EFAULT;
	if (FUNC11(iph, msg, length))
		goto error_free;

	iphlen = iph->ihl * 4;

	/*
	 * We don't want to modify the ip header, but we do need to
	 * be sure that it won't cause problems later along the network
	 * stack.  Specifically we want to make sure that iph->ihl is a
	 * sane value.  If ihl points beyond the length of the buffer passed
	 * in, reject the frame as invalid
	 */
	err = -EINVAL;
	if (iphlen > length)
		goto error_free;

	if (iphlen >= sizeof(*iph)) {
		if (!iph->saddr)
			iph->saddr = fl4->saddr;
		iph->check   = 0;
		iph->tot_len = FUNC3(length);
		if (!iph->id)
			FUNC9(net, skb, NULL);

		iph->check = FUNC6((unsigned char *)iph, iph->ihl);
		skb->transport_header += iphlen;
		if (iph->protocol == IPPROTO_ICMP &&
		    length >= iphlen + sizeof(struct icmphdr))
			FUNC4(net, ((struct icmphdr *)
				FUNC19(skb))->type);
	}

	err = FUNC2(NFPROTO_IPV4, NF_INET_LOCAL_OUT,
		      net, sk, skb, NULL, rt->dst.dev,
		      dst_output);
	if (err > 0)
		err = FUNC12(err);
	if (err)
		goto error;
out:
	return 0;

error_free:
	FUNC10(skb);
error:
	FUNC0(net, IPSTATS_MIB_OUTDISCARDS);
	if (err == -ENOBUFS && !inet->recverr)
		err = 0;
	return err;
}