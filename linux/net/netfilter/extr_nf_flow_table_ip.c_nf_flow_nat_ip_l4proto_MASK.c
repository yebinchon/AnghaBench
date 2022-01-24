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
struct sk_buff {int dummy; } ;
struct iphdr {int protocol; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct iphdr *iph,
				  unsigned int thoff, __be32 addr,
				  __be32 new_addr)
{
	switch (iph->protocol) {
	case IPPROTO_TCP:
		if (FUNC0(skb, thoff, addr, new_addr) < 0)
			return NF_DROP;
		break;
	case IPPROTO_UDP:
		if (FUNC1(skb, thoff, addr, new_addr) < 0)
			return NF_DROP;
		break;
	}

	return 0;
}