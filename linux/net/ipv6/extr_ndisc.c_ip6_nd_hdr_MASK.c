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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {int hop_limit; struct in6_addr daddr; struct in6_addr saddr; int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  payload_len; } ;
struct TYPE_2__ {unsigned int ndisc_tclass; } ;
struct inet6_dev {TYPE_1__ cnf; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 struct inet6_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6hdr*,unsigned int,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb,
		       const struct in6_addr *saddr,
		       const struct in6_addr *daddr,
		       int hop_limit, int len)
{
	struct ipv6hdr *hdr;
	struct inet6_dev *idev;
	unsigned tclass;

	FUNC4();
	idev = FUNC0(skb->dev);
	tclass = idev ? idev->cnf.ndisc_tclass : 0;
	FUNC5();

	FUNC6(skb, sizeof(*hdr));
	FUNC7(skb);
	hdr = FUNC3(skb);

	FUNC2(hdr, tclass, 0);

	hdr->payload_len = FUNC1(len);
	hdr->nexthdr = IPPROTO_ICMPV6;
	hdr->hop_limit = hop_limit;

	hdr->saddr = *saddr;
	hdr->daddr = *daddr;
}