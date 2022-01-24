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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int nexthdr; int /*<<< orphan*/  payload_len; } ;
struct ipv6_opt_hdr {int nexthdr; } ;

/* Variables and functions */
#define  IPPROTO_ICMPV6 136 
#define  IPPROTO_SCTP 135 
#define  IPPROTO_TCP 134 
#define  IPPROTO_UDP 133 
#define  IPPROTO_UDPLITE 132 
#define  NEXTHDR_DEST 131 
#define  NEXTHDR_FRAGMENT 130 
#define  NEXTHDR_HOP 129 
#define  NEXTHDR_ROUTING 128 
 int TCA_CSUM_UPDATE_FLAG_ICMP ; 
 int TCA_CSUM_UPDATE_FLAG_SCTP ; 
 int TCA_CSUM_UPDATE_FLAG_TCP ; 
 int TCA_CSUM_UPDATE_FLAG_UDP ; 
 int TCA_CSUM_UPDATE_FLAG_UDPLITE ; 
 struct ipv6hdr* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct ipv6_opt_hdr*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipv6_opt_hdr*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, u32 update_flags)
{
	struct ipv6hdr *ip6h;
	struct ipv6_opt_hdr *ip6xh;
	unsigned int hl, ixhl;
	unsigned int pl;
	int ntkoff;
	u8 nexthdr;

	ntkoff = FUNC5(skb);

	hl = sizeof(*ip6h);

	if (!FUNC3(skb, hl + ntkoff))
		goto fail;

	ip6h = FUNC0(skb);

	pl = FUNC2(ip6h->payload_len);
	nexthdr = ip6h->nexthdr;

	do {
		switch (nexthdr) {
		case NEXTHDR_FRAGMENT:
			goto ignore_skb;
		case NEXTHDR_ROUTING:
		case NEXTHDR_HOP:
		case NEXTHDR_DEST:
			if (!FUNC3(skb, hl + sizeof(*ip6xh) + ntkoff))
				goto fail;
			ip6xh = (void *)(FUNC4(skb) + hl);
			ixhl = FUNC1(ip6xh);
			if (!FUNC3(skb, hl + ixhl + ntkoff))
				goto fail;
			ip6xh = (void *)(FUNC4(skb) + hl);
			if ((nexthdr == NEXTHDR_HOP) &&
			    !(FUNC6(ip6xh, ixhl, &pl)))
				goto fail;
			nexthdr = ip6xh->nexthdr;
			hl += ixhl;
			break;
		case IPPROTO_ICMPV6:
			if (update_flags & TCA_CSUM_UPDATE_FLAG_ICMP)
				if (!FUNC7(skb,
							hl, pl + sizeof(*ip6h)))
					goto fail;
			goto done;
		case IPPROTO_TCP:
			if (update_flags & TCA_CSUM_UPDATE_FLAG_TCP)
				if (!FUNC8(skb,
						       hl, pl + sizeof(*ip6h)))
					goto fail;
			goto done;
		case IPPROTO_UDP:
			if (update_flags & TCA_CSUM_UPDATE_FLAG_UDP)
				if (!FUNC9(skb, hl,
						       pl + sizeof(*ip6h), 0))
					goto fail;
			goto done;
		case IPPROTO_UDPLITE:
			if (update_flags & TCA_CSUM_UPDATE_FLAG_UDPLITE)
				if (!FUNC9(skb, hl,
						       pl + sizeof(*ip6h), 1))
					goto fail;
			goto done;
		case IPPROTO_SCTP:
			if ((update_flags & TCA_CSUM_UPDATE_FLAG_SCTP) &&
			    !FUNC10(skb, hl, pl + sizeof(*ip6h)))
				goto fail;
			goto done;
		default:
			goto ignore_skb;
		}
	} while (FUNC3(skb, hl + 1 + ntkoff));

done:
ignore_skb:
	return 1;

fail:
	return 0;
}