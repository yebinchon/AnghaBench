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
struct skb_shared_info {int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int SKB_GSO_DODGY ; 
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int FUNC0 (struct sk_buff*,int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct skb_shared_info*,int const) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb)
{
	const u32 len_diff = sizeof(struct ipv6hdr) - sizeof(struct iphdr);
	u32 off = FUNC7(skb);
	int ret;

	if (FUNC5(skb) && !FUNC6(skb))
		return -ENOTSUPP;

	ret = FUNC3(skb, len_diff);
	if (FUNC9(ret < 0))
		return ret;

	ret = FUNC0(skb, off, len_diff);
	if (FUNC9(ret < 0))
		return ret;

	if (FUNC5(skb)) {
		struct skb_shared_info *shinfo = FUNC8(skb);

		/* SKB_GSO_TCPV4 needs to be changed into
		 * SKB_GSO_TCPV6.
		 */
		if (shinfo->gso_type & SKB_GSO_TCPV4) {
			shinfo->gso_type &= ~SKB_GSO_TCPV4;
			shinfo->gso_type |=  SKB_GSO_TCPV6;
		}

		/* Due to IPv6 header, MSS needs to be downgraded. */
		FUNC4(shinfo, len_diff);
		/* Header must be checked, and gso_segs recomputed. */
		shinfo->gso_type |= SKB_GSO_DODGY;
		shinfo->gso_segs = 0;
	}

	skb->protocol = FUNC1(ETH_P_IPV6);
	FUNC2(skb);

	return 0;
}