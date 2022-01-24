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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  protocol; int /*<<< orphan*/  csum_start; } ;
struct hsr_frame_info {scalar_t__ is_vlan; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HSR_HLEN ; 
 scalar_t__ VLAN_HLEN ; 
 struct sk_buff* FUNC0 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct sk_buff *skb_in,
					   struct hsr_frame_info *frame)
{
	struct sk_buff *skb;
	int copylen;
	unsigned char *dst, *src;

	FUNC5(skb_in, HSR_HLEN);
	skb = FUNC0(skb_in, FUNC3(skb_in) - HSR_HLEN, GFP_ATOMIC);
	FUNC6(skb_in, HSR_HLEN);
	if (!skb)
		return NULL;

	FUNC7(skb);

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		skb->csum_start -= HSR_HLEN;

	copylen = 2 * ETH_ALEN;
	if (frame->is_vlan)
		copylen += VLAN_HLEN;
	src = FUNC4(skb_in);
	dst = FUNC4(skb);
	FUNC2(dst, src, copylen);

	skb->protocol = FUNC1(skb)->h_proto;
	return skb;
}