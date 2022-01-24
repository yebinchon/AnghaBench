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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	struct net *net = FUNC0(skb->dev);
	const struct ipv6hdr *iph = FUNC1(skb);
	__be32 spi;

	spi = FUNC3(net, (const xfrm_address_t *)&iph->saddr);
	return FUNC2(skb, IPPROTO_IPV6, spi, NULL);
}