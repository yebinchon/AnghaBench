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
typedef  scalar_t__ u8 ;
struct udphdr {scalar_t__ check; } ;
struct sk_buff {unsigned int len; scalar_t__ mac_header; int /*<<< orphan*/  dev; int /*<<< orphan*/  network_header; scalar_t__ head; int /*<<< orphan*/  encap_hdr_csum; int /*<<< orphan*/  ip_summed; scalar_t__ encapsulation; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct frag_hdr {int /*<<< orphan*/  identification; scalar_t__ reserved; scalar_t__ nexthdr; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_4__ {int mac_offset; } ;
struct TYPE_3__ {unsigned int gso_size; int gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int EINVAL ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  NETIF_F_HW_CSUM ; 
 scalar_t__ NEXTHDR_FRAGMENT ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int SKB_GSO_UDP ; 
 int SKB_GSO_UDP_L4 ; 
 int SKB_GSO_UDP_TUNNEL ; 
 int SKB_GSO_UDP_TUNNEL_CSUM ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,scalar_t__) ; 
 int FUNC5 (struct sk_buff*,scalar_t__**) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct udphdr* FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC20(struct sk_buff *skb,
					 netdev_features_t features)
{
	struct sk_buff *segs = FUNC0(-EINVAL);
	unsigned int mss;
	unsigned int unfrag_ip6hlen, unfrag_len;
	struct frag_hdr *fptr;
	u8 *packet_start, *prevhdr;
	u8 nexthdr;
	u8 frag_hdr_sz = sizeof(struct frag_hdr);
	__wsum csum;
	int tnl_hlen;
	int err;

	mss = FUNC14(skb)->gso_size;
	if (FUNC19(skb->len <= mss))
		goto out;

	if (skb->encapsulation && FUNC14(skb)->gso_type &
	    (SKB_GSO_UDP_TUNNEL|SKB_GSO_UDP_TUNNEL_CSUM))
		segs = FUNC16(skb, features, true);
	else {
		const struct ipv6hdr *ipv6h;
		struct udphdr *uh;

		if (!(FUNC14(skb)->gso_type & (SKB_GSO_UDP | SKB_GSO_UDP_L4)))
			goto out;

		if (!FUNC9(skb, sizeof(struct udphdr)))
			goto out;

		if (FUNC14(skb)->gso_type & SKB_GSO_UDP_L4)
			return FUNC2(skb, features);

		/* Do software UFO. Complete and fill in the UDP checksum as HW cannot
		 * do checksum of UDP packets sent as multiple IP fragments.
		 */

		uh = FUNC17(skb);
		ipv6h = FUNC6(skb);

		uh->check = 0;
		csum = FUNC10(skb, 0, skb->len, 0);
		uh->check = FUNC18(skb->len, &ipv6h->saddr,
					  &ipv6h->daddr, csum);
		if (uh->check == 0)
			uh->check = CSUM_MANGLED_0;

		skb->ip_summed = CHECKSUM_UNNECESSARY;

		/* If there is no outer header we can fake a checksum offload
		 * due to the fact that we have already done the checksum in
		 * software prior to segmenting the frame.
		 */
		if (!skb->encap_hdr_csum)
			features |= NETIF_F_HW_CSUM;

		/* Check if there is enough headroom to insert fragment header. */
		tnl_hlen = FUNC15(skb);
		if (skb->mac_header < (tnl_hlen + frag_hdr_sz)) {
			if (FUNC4(skb, tnl_hlen + frag_hdr_sz))
				goto out;
		}

		/* Find the unfragmentable header and shift it left by frag_hdr_sz
		 * bytes to insert fragment header.
		 */
		err = FUNC5(skb, &prevhdr);
		if (err < 0)
			return FUNC0(err);
		unfrag_ip6hlen = err;
		nexthdr = *prevhdr;
		*prevhdr = NEXTHDR_FRAGMENT;
		unfrag_len = (FUNC12(skb) - FUNC11(skb)) +
			     unfrag_ip6hlen + tnl_hlen;
		packet_start = (u8 *) skb->head + FUNC1(skb)->mac_offset;
		FUNC8(packet_start-frag_hdr_sz, packet_start, unfrag_len);

		FUNC1(skb)->mac_offset -= frag_hdr_sz;
		skb->mac_header -= frag_hdr_sz;
		skb->network_header -= frag_hdr_sz;

		fptr = (struct frag_hdr *)(FUNC12(skb) + unfrag_ip6hlen);
		fptr->nexthdr = nexthdr;
		fptr->reserved = 0;
		fptr->identification = FUNC7(FUNC3(skb->dev), skb);

		/* Fragment the skb. ipv6 header and the remaining fields of the
		 * fragment header are updated in ipv6_gso_segment()
		 */
		segs = FUNC13(skb, features);
	}

out:
	return segs;
}