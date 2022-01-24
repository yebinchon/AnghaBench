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
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int version; int /*<<< orphan*/  ttl; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  id; int /*<<< orphan*/  tos; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttl; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  id; int /*<<< orphan*/  tos; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC2(struct sk_buff *skb)
{
	struct iphdr *iph = FUNC1(skb);

	iph->ihl = 5;
	iph->version = 4;

	iph->protocol = FUNC0(skb)->protocol;
	iph->tos = FUNC0(skb)->tos;

	iph->id = FUNC0(skb)->id;
	iph->frag_off = FUNC0(skb)->frag_off;
	iph->ttl = FUNC0(skb)->ttl;
}