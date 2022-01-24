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
struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct in6_addr {int /*<<< orphan*/  s6_addr32; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, unsigned int thoff,
				struct in6_addr *addr,
				struct in6_addr *new_addr)
{
	struct udphdr *udph;

	if (!FUNC1(skb, thoff + sizeof(*udph)) ||
	    FUNC3(skb, thoff + sizeof(*udph)))
		return -1;

	udph = (void *)(FUNC2(skb) + thoff);
	if (udph->check || skb->ip_summed == CHECKSUM_PARTIAL) {
		FUNC0(&udph->check, skb, addr->s6_addr32,
					  new_addr->s6_addr32, true);
		if (!udph->check)
			udph->check = CSUM_MANGLED_0;
	}

	return 0;
}