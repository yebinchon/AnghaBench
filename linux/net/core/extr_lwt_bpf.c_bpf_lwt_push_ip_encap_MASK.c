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
typedef  int u32 ;
struct sk_buff {int encapsulation; void* protocol; scalar_t__ mac_len; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ check; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LWT_BPF_MAX_HEADROOM ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct iphdr*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,void*) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct sk_buff *skb, void *hdr, u32 len, bool ingress)
{
	struct iphdr *iph;
	bool ipv4;
	int err;

	if (FUNC18(len < sizeof(struct iphdr) || len > LWT_BPF_MAX_HEADROOM))
		return -EINVAL;

	/* validate protocol and length */
	iph = (struct iphdr *)hdr;
	if (iph->version == 4) {
		ipv4 = true;
		if (FUNC18(len < iph->ihl * 4))
			return -EINVAL;
	} else if (iph->version == 6) {
		ipv4 = false;
		if (FUNC18(len < sizeof(struct ipv6hdr)))
			return -EINVAL;
	} else {
		return -EINVAL;
	}

	if (ingress)
		err = FUNC8(skb, len + skb->mac_len);
	else
		err = FUNC8(skb,
				   len + FUNC0(FUNC9(skb)->dev));
	if (FUNC18(err))
		return err;

	/* push the encap headers and fix pointers */
	FUNC14(skb);
	FUNC15(skb);  /* mac header is not yet set */
	FUNC17(skb, skb->protocol);
	skb->encapsulation = 1;
	FUNC13(skb, len);
	if (ingress)
		FUNC12(skb, iph, len);
	FUNC16(skb);
	FUNC6(FUNC11(skb), hdr, len);
	FUNC1(skb);
	FUNC7(skb);

	if (ipv4) {
		skb->protocol = FUNC3(ETH_P_IP);
		iph = FUNC5(skb);

		if (!iph->check)
			iph->check = FUNC4((unsigned char *)iph,
						  iph->ihl);
	} else {
		skb->protocol = FUNC3(ETH_P_IPV6);
	}

	if (FUNC10(skb))
		return FUNC2(skb, ipv4, len);

	return 0;
}