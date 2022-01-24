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
struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct iphdr {void* frag_off; void* tot_len; } ;
struct ip_fraglist_iter {unsigned int hlen; struct iphdr* iph; scalar_t__ offset; int /*<<< orphan*/  frag; } ;
struct TYPE_2__ {int /*<<< orphan*/  frag_list; } ;

/* Variables and functions */
 unsigned int IP_MF ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

void FUNC6(struct sk_buff *skb, struct iphdr *iph,
		      unsigned int hlen, struct ip_fraglist_iter *iter)
{
	unsigned int first_len = FUNC4(skb);

	iter->frag = FUNC5(skb)->frag_list;
	FUNC2(skb);

	iter->offset = 0;
	iter->iph = iph;
	iter->hlen = hlen;

	skb->data_len = first_len - FUNC3(skb);
	skb->len = first_len;
	iph->tot_len = FUNC0(first_len);
	iph->frag_off = FUNC0(IP_MF);
	FUNC1(iph);
}