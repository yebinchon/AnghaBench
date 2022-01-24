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
struct sk_buff {scalar_t__ mac_len; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  nexthdr; } ;
struct ipv6_sr_hdr {int hdrlen; size_t first_segment; int /*<<< orphan*/ * segments; int /*<<< orphan*/  nexthdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEXTHDR_ROUTING ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6_sr_hdr*,struct ipv6_sr_hdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipv6hdr*,struct ipv6hdr*,int) ; 
 int FUNC4 (struct net*,int /*<<< orphan*/ *,struct ipv6_sr_hdr*) ; 
 int FUNC5 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct ipv6hdr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct ipv6_sr_hdr*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct sk_buff *skb, struct ipv6_sr_hdr *osrh)
{
	struct ipv6hdr *hdr, *oldhdr;
	struct ipv6_sr_hdr *isrh;
	int hdrlen, err;

	hdrlen = (osrh->hdrlen + 1) << 3;

	err = FUNC5(skb, hdrlen + skb->mac_len);
	if (FUNC15(err))
		return err;

	oldhdr = FUNC1(skb);

	FUNC11(skb, sizeof(struct ipv6hdr));
	FUNC9(skb, FUNC8(skb),
			   sizeof(struct ipv6hdr));

	FUNC12(skb, sizeof(struct ipv6hdr) + hdrlen);
	FUNC13(skb);
	FUNC7(skb);

	hdr = FUNC1(skb);

	FUNC3(hdr, oldhdr, sizeof(*hdr));

	isrh = (void *)hdr + sizeof(*hdr);
	FUNC2(isrh, osrh, hdrlen);

	isrh->nexthdr = hdr->nexthdr;
	hdr->nexthdr = NEXTHDR_ROUTING;

	isrh->segments[0] = hdr->daddr;
	hdr->daddr = isrh->segments[isrh->first_segment];

#ifdef CONFIG_IPV6_SEG6_HMAC
	if (sr_has_hmac(isrh)) {
		struct net *net = dev_net(skb_dst(skb)->dev);

		err = seg6_push_hmac(net, &hdr->saddr, isrh);
		if (unlikely(err))
			return err;
	}
#endif

	FUNC10(skb, hdr, sizeof(struct ipv6hdr) + hdrlen);

	return 0;
}