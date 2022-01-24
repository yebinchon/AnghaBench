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
typedef  int u16 ;
struct udphdr {scalar_t__ check; int /*<<< orphan*/  len; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; void* csum; } ;
struct iphdr {int /*<<< orphan*/  protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int SKB_GSO_UDP ; 
 void* FUNC0 (struct udphdr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 struct udphdr* FUNC6 (struct sk_buff*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, unsigned int ihl,
			     unsigned int ipl, int udplite)
{
	struct udphdr *udph;
	const struct iphdr *iph;
	u16 ul;

	if (FUNC4(skb) && FUNC5(skb)->gso_type & SKB_GSO_UDP)
		return 1;

	/*
	 * Support both UDP and UDPLITE checksum algorithms, Don't use
	 * udph->len to get the real length without any protocol check,
	 * UDPLITE uses udph->len for another thing,
	 * Use iph->tot_len, or just ipl.
	 */

	udph = FUNC6(skb, ihl, ipl, sizeof(*udph));
	if (udph == NULL)
		return 0;

	iph = FUNC2(skb);
	ul = FUNC3(udph->len);

	if (udplite || udph->check) {

		udph->check = 0;

		if (udplite) {
			if (ul == 0)
				skb->csum = FUNC0(udph, ipl - ihl, 0);
			else if ((ul >= sizeof(*udph)) && (ul <= ipl - ihl))
				skb->csum = FUNC0(udph, ul, 0);
			else
				goto ignore_obscure_skb;
		} else {
			if (ul != ipl - ihl)
				goto ignore_obscure_skb;

			skb->csum = FUNC0(udph, ul, 0);
		}

		udph->check = FUNC1(iph->saddr, iph->daddr,
						ul, iph->protocol,
						skb->csum);

		if (!udph->check)
			udph->check = CSUM_MANGLED_0;
	}

	skb->ip_summed = CHECKSUM_NONE;

ignore_obscure_skb:
	return 1;
}