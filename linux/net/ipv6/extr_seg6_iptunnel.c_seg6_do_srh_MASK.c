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
struct sk_buff {void* protocol; scalar_t__ len; int /*<<< orphan*/  mac_len; } ;
struct seg6_iptunnel_encap {int mode; int /*<<< orphan*/  srh; } ;
struct ipv6hdr {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  lwtstate; } ;
struct TYPE_2__ {void* payload_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IPPROTO_IPIP ; 
 int IPPROTO_IPV6 ; 
 int NEXTHDR_NONE ; 
#define  SEG6_IPTUN_MODE_ENCAP 130 
#define  SEG6_IPTUN_MODE_INLINE 129 
#define  SEG6_IPTUN_MODE_L2ENCAP 128 
 int /*<<< orphan*/  SKB_GSO_IPXIP6 ; 
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct seg6_iptunnel_encap* FUNC6 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC7(skb);
	struct seg6_iptunnel_encap *tinfo;
	int proto, err = 0;

	tinfo = FUNC6(dst->lwtstate);

	switch (tinfo->mode) {
	case SEG6_IPTUN_MODE_INLINE:
		if (skb->protocol != FUNC0(ETH_P_IPV6))
			return -EINVAL;

		err = FUNC5(skb, tinfo->srh);
		if (err)
			return err;
		break;
	case SEG6_IPTUN_MODE_ENCAP:
		err = FUNC1(skb, SKB_GSO_IPXIP6);
		if (err)
			return err;

		if (skb->protocol == FUNC0(ETH_P_IPV6))
			proto = IPPROTO_IPV6;
		else if (skb->protocol == FUNC0(ETH_P_IP))
			proto = IPPROTO_IPIP;
		else
			return -EINVAL;

		err = FUNC4(skb, tinfo->srh, proto);
		if (err)
			return err;

		FUNC12(skb, FUNC14(skb));
		FUNC11(skb, skb->protocol);
		skb->protocol = FUNC0(ETH_P_IPV6);
		break;
	case SEG6_IPTUN_MODE_L2ENCAP:
		if (!FUNC9(skb))
			return -EINVAL;

		if (FUNC3(skb, skb->mac_len, 0, GFP_ATOMIC) < 0)
			return -ENOMEM;

		FUNC8(skb);
		FUNC10(skb, skb->mac_len);

		err = FUNC4(skb, tinfo->srh, NEXTHDR_NONE);
		if (err)
			return err;

		skb->protocol = FUNC0(ETH_P_IPV6);
		break;
	}

	FUNC2(skb)->payload_len = FUNC0(skb->len - sizeof(struct ipv6hdr));
	FUNC13(skb, sizeof(struct ipv6hdr));

	return 0;
}