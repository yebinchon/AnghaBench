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
typedef  int u8 ;
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  priority; } ;
struct net_device {int needed_tailroom; int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {struct sock* igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct mld_msg {int mld_type; int /*<<< orphan*/  mld_cksum; struct in6_addr mld_mca; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct icmp6hdr {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  ra ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int ICMPV6_MGM_REDUCTION ; 
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ,int) ; 
 int IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int IPV6_TLV_PADN ; 
 int IPV6_TLV_ROUTERALERT ; 
 scalar_t__ FUNC4 (struct dst_entry*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  NEXTHDR_HOP ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int FUNC7 (struct dst_entry*) ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 struct inet6_dev* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct in6_addr const*,struct in6_addr const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mld_msg*,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  dst_output ; 
 struct dst_entry* FUNC12 (struct net_device*,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct flowi6*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct in6_addr in6addr_any ; 
 struct in6_addr in6addr_linklocal_allrouters ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*,struct net_device*,struct in6_addr const*,struct in6_addr const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int*,int) ; 
 struct mld_msg* FUNC22 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC24 (struct sock*,int,int,int*) ; 

__attribute__((used)) static void FUNC25(struct in6_addr *addr, struct net_device *dev, int type)
{
	struct net *net = FUNC11(dev);
	struct sock *sk = net->ipv6.igmp_sk;
	struct inet6_dev *idev;
	struct sk_buff *skb;
	struct mld_msg *hdr;
	const struct in6_addr *snd_addr, *saddr;
	struct in6_addr addr_buf;
	int hlen = FUNC5(dev);
	int tlen = dev->needed_tailroom;
	int err, len, payload_len, full_len;
	u8 ra[8] = { IPPROTO_ICMPV6, 0,
		     IPV6_TLV_ROUTERALERT, 2, 0, 0,
		     IPV6_TLV_PADN, 0 };
	struct flowi6 fl6;
	struct dst_entry *dst;

	if (type == ICMPV6_MGM_REDUCTION)
		snd_addr = &in6addr_linklocal_allrouters;
	else
		snd_addr = addr;

	len = sizeof(struct icmp6hdr) + sizeof(struct in6_addr);
	payload_len = len + sizeof(ra);
	full_len = sizeof(struct ipv6hdr) + payload_len;

	FUNC18();
	FUNC3(net, FUNC8(dev),
		      IPSTATS_MIB_OUT, full_len);
	FUNC19();

	skb = FUNC24(sk, hlen + tlen + full_len, 1, &err);

	if (!skb) {
		FUNC18();
		FUNC2(net, FUNC8(dev),
			      IPSTATS_MIB_OUTDISCARDS);
		FUNC19();
		return;
	}
	skb->priority = TC_PRIO_CONTROL;
	FUNC23(skb, hlen);

	if (FUNC15(dev, &addr_buf, IFA_F_TENTATIVE)) {
		/* <draft-ietf-magma-mld-source-05.txt>:
		 * use unspecified address as the source address
		 * when a valid link-local address is not available.
		 */
		saddr = &in6addr_any;
	} else
		saddr = &addr_buf;

	FUNC14(sk, skb, dev, saddr, snd_addr, NEXTHDR_HOP, payload_len);

	FUNC21(skb, ra, sizeof(ra));

	hdr = FUNC22(skb, sizeof(struct mld_msg));
	hdr->mld_type = type;
	hdr->mld_mca = *addr;

	hdr->mld_cksum = FUNC9(saddr, snd_addr, len,
					 IPPROTO_ICMPV6,
					 FUNC10(hdr, len, 0));

	FUNC18();
	idev = FUNC8(skb->dev);

	FUNC13(sk, &fl6, type,
			 &FUNC16(skb)->saddr, &FUNC16(skb)->daddr,
			 skb->dev->ifindex);
	dst = FUNC12(skb->dev, &fl6);
	if (FUNC4(dst)) {
		err = FUNC7(dst);
		goto err_out;
	}

	FUNC20(skb, dst);
	err = FUNC6(NFPROTO_IPV6, NF_INET_LOCAL_OUT,
		      net, sk, skb, NULL, skb->dev,
		      dst_output);
out:
	if (!err) {
		FUNC0(net, idev, type);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
	} else
		FUNC2(net, idev, IPSTATS_MIB_OUTDISCARDS);

	FUNC19();
	return;

err_out:
	FUNC17(skb);
	goto out;
}