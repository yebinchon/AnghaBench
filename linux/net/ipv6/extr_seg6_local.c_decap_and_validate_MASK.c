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
struct sk_buff {scalar_t__ encapsulation; } ;
struct ipv6_sr_hdr {scalar_t__ segments_left; } ;

/* Variables and functions */
 struct ipv6_sr_hdr* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,unsigned int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC8(struct sk_buff *skb, int proto)
{
	struct ipv6_sr_hdr *srh;
	unsigned int off = 0;

	srh = FUNC0(skb);
	if (srh && srh->segments_left > 0)
		return false;

#ifdef CONFIG_IPV6_SEG6_HMAC
	if (srh && !seg6_hmac_validate_skb(skb))
		return false;
#endif

	if (FUNC1(skb, &off, proto, NULL, NULL) < 0)
		return false;

	if (!FUNC2(skb, off))
		return false;

	FUNC5(skb, FUNC4(skb), off);

	FUNC6(skb);
	FUNC7(skb);
	skb->encapsulation = 0;

	return true;
}