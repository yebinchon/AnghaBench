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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  network_header; int /*<<< orphan*/  transport_header; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_idev; TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  recverr; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_5__ {int needed_tailroom; int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EFAULT ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int FUNC2 (TYPE_2__*) ; 
 unsigned int MSG_CONFIRM ; 
 unsigned int MSG_DONTWAIT ; 
 unsigned int MSG_PROBE ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int,struct flowi6*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sock*,struct sk_buff*) ; 
 int FUNC10 (struct ipv6hdr*,struct msghdr*,int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC20 (struct sock*,int,unsigned int,int*) ; 
 struct net* FUNC21 (struct sock*) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct sock *sk, struct msghdr *msg, int length,
			struct flowi6 *fl6, struct dst_entry **dstp,
			unsigned int flags, const struct sockcm_cookie *sockc)
{
	struct ipv6_pinfo *np = FUNC5(sk);
	struct net *net = FUNC21(sk);
	struct ipv6hdr *iph;
	struct sk_buff *skb;
	int err;
	struct rt6_info *rt = (struct rt6_info *)*dstp;
	int hlen = FUNC2(rt->dst.dev);
	int tlen = rt->dst.dev->needed_tailroom;

	if (length > rt->dst.dev->mtu) {
		FUNC7(sk, EMSGSIZE, fl6, rt->dst.dev->mtu);
		return -EMSGSIZE;
	}
	if (length < sizeof(struct ipv6hdr))
		return -EINVAL;
	if (flags&MSG_PROBE)
		goto out;

	skb = FUNC20(sk,
				  length + hlen + tlen + 15,
				  flags & MSG_DONTWAIT, &err);
	if (!skb)
		goto error;
	FUNC16(skb, hlen);

	skb->protocol = FUNC4(ETH_P_IPV6);
	skb->priority = sk->sk_priority;
	skb->mark = sockc->mark;
	skb->tstamp = sockc->transmit_time;

	FUNC15(skb, length);
	FUNC17(skb);
	iph = FUNC6(skb);

	skb->ip_summed = CHECKSUM_NONE;

	FUNC19(skb, sockc->tsflags);

	if (flags & MSG_CONFIRM)
		FUNC18(skb, 1);

	skb->transport_header = skb->network_header;
	err = FUNC10(iph, msg, length);
	if (err) {
		err = -EFAULT;
		FUNC8(skb);
		goto error;
	}

	FUNC14(skb, &rt->dst);
	*dstp = NULL;

	/* if egress device is enslaved to an L3 master device pass the
	 * skb to its handler for processing
	 */
	skb = FUNC9(sk, skb);
	if (FUNC22(!skb))
		return 0;

	/* Acquire rcu_read_lock() in case we need to use rt->rt6i_idev
	 * in the error path. Since skb has been freed, the dst could
	 * have been queued for deletion.
	 */
	FUNC12();
	FUNC1(net, rt->rt6i_idev, IPSTATS_MIB_OUT, skb->len);
	err = FUNC3(NFPROTO_IPV6, NF_INET_LOCAL_OUT, net, sk, skb,
		      NULL, rt->dst.dev, dst_output);
	if (err > 0)
		err = FUNC11(err);
	if (err) {
		FUNC0(net, rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
		FUNC13();
		goto error_check;
	}
	FUNC13();
out:
	return 0;

error:
	FUNC0(net, rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
error_check:
	if (err == -ENOBUFS && !np->recverr)
		err = 0;
	return err;
}