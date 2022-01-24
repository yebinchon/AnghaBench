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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct iphdr {int frag_off; int protocol; int ihl; int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
#define  IPPROTO_ICMP 133 
#define  IPPROTO_IGMP 132 
#define  IPPROTO_SCTP 131 
#define  IPPROTO_TCP 130 
#define  IPPROTO_UDP 129 
#define  IPPROTO_UDPLITE 128 
 int /*<<< orphan*/  IP_OFFSET ; 
 int TCA_CSUM_UPDATE_FLAG_ICMP ; 
 int TCA_CSUM_UPDATE_FLAG_IGMP ; 
 int TCA_CSUM_UPDATE_FLAG_IPV4HDR ; 
 int TCA_CSUM_UPDATE_FLAG_SCTP ; 
 int TCA_CSUM_UPDATE_FLAG_TCP ; 
 int TCA_CSUM_UPDATE_FLAG_UDP ; 
 int TCA_CSUM_UPDATE_FLAG_UDPLITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, u32 update_flags)
{
	const struct iphdr *iph;
	int ntkoff;

	ntkoff = FUNC5(skb);

	if (!FUNC4(skb, sizeof(*iph) + ntkoff))
		goto fail;

	iph = FUNC1(skb);

	switch (iph->frag_off & FUNC0(IP_OFFSET) ? 0 : iph->protocol) {
	case IPPROTO_ICMP:
		if (update_flags & TCA_CSUM_UPDATE_FLAG_ICMP)
			if (!FUNC7(skb, iph->ihl * 4,
						FUNC3(iph->tot_len)))
				goto fail;
		break;
	case IPPROTO_IGMP:
		if (update_flags & TCA_CSUM_UPDATE_FLAG_IGMP)
			if (!FUNC8(skb, iph->ihl * 4,
						FUNC3(iph->tot_len)))
				goto fail;
		break;
	case IPPROTO_TCP:
		if (update_flags & TCA_CSUM_UPDATE_FLAG_TCP)
			if (!FUNC9(skb, iph->ihl * 4,
					       FUNC3(iph->tot_len)))
				goto fail;
		break;
	case IPPROTO_UDP:
		if (update_flags & TCA_CSUM_UPDATE_FLAG_UDP)
			if (!FUNC10(skb, iph->ihl * 4,
					       FUNC3(iph->tot_len), 0))
				goto fail;
		break;
	case IPPROTO_UDPLITE:
		if (update_flags & TCA_CSUM_UPDATE_FLAG_UDPLITE)
			if (!FUNC10(skb, iph->ihl * 4,
					       FUNC3(iph->tot_len), 1))
				goto fail;
		break;
	case IPPROTO_SCTP:
		if ((update_flags & TCA_CSUM_UPDATE_FLAG_SCTP) &&
		    !FUNC11(skb, iph->ihl * 4, FUNC3(iph->tot_len)))
			goto fail;
		break;
	}

	if (update_flags & TCA_CSUM_UPDATE_FLAG_IPV4HDR) {
		if (FUNC6(skb, sizeof(*iph) + ntkoff))
			goto fail;

		FUNC2(FUNC1(skb));
	}

	return 1;

fail:
	return 0;
}