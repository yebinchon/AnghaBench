#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ sk; } ;
struct ipv6hdr {int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  payload_len; } ;
struct iphdr {int frag_off; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  ttl; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __u32 ;
typedef  int __be16 ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *
FUNC16(struct sk_buff *skb, int skb_af,
			   unsigned int max_headroom, __u8 *next_protocol,
			   __u32 *payload_len, __u8 *dsfield, __u8 *ttl,
			   __be16 *df)
{
	struct sk_buff *new_skb = NULL;
	struct iphdr *old_iph = NULL;
	__u8 old_dsfield;
#ifdef CONFIG_IP_VS_IPV6
	struct ipv6hdr *old_ipv6h = NULL;
#endif

	FUNC6(skb);

	if (FUNC13(skb) < max_headroom || FUNC12(skb)) {
		new_skb = FUNC14(skb, max_headroom);
		if (!new_skb)
			goto error;
		if (skb->sk)
			FUNC15(new_skb, skb->sk);
		FUNC2(skb);
		skb = new_skb;
	}

#ifdef CONFIG_IP_VS_IPV6
	if (skb_af == AF_INET6) {
		old_ipv6h = ipv6_hdr(skb);
		*next_protocol = IPPROTO_IPV6;
		if (payload_len)
			*payload_len =
				ntohs(old_ipv6h->payload_len) +
				sizeof(*old_ipv6h);
		old_dsfield = ipv6_get_dsfield(old_ipv6h);
		*ttl = old_ipv6h->hop_limit;
		if (df)
			*df = 0;
	} else
#endif
	{
		old_iph = FUNC4(skb);
		/* Copy DF, reset fragment offset and MF */
		if (df)
			*df = (old_iph->frag_off & FUNC3(IP_DF));
		*next_protocol = IPPROTO_IPIP;

		/* fix old IP header checksum */
		FUNC5(old_iph);
		old_dsfield = FUNC7(old_iph);
		*ttl = old_iph->ttl;
		if (payload_len)
			*payload_len = FUNC11(old_iph->tot_len);
	}

	/* Implement full-functionality option for ECN encapsulation */
	*dsfield = FUNC1(old_dsfield, old_dsfield);

	return skb;
error:
	FUNC10(skb);
	return FUNC0(-ENOMEM);
}