#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ila_net {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip; } ;
struct ila_map {TYPE_1__ xp; } ;
struct ila_addr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 struct net* FUNC0 (TYPE_2__*) ; 
 struct ila_addr* FUNC1 (int /*<<< orphan*/ *) ; 
 struct ila_map* FUNC2 (struct ila_addr*,int /*<<< orphan*/ ,struct ila_net*) ; 
 int /*<<< orphan*/  ila_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 struct ila_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, bool sir2ila)
{
	struct ila_map *ila;
	struct ipv6hdr *ip6h = FUNC4(skb);
	struct net *net = FUNC0(skb->dev);
	struct ila_net *ilan = FUNC5(net, ila_net_id);
	struct ila_addr *iaddr = FUNC1(&ip6h->daddr);

	/* Assumes skb contains a valid IPv6 header that is pulled */

	/* No check here that ILA type in the mapping matches what is in the
	 * address. We assume that whatever sender gaves us can be translated.
	 * The checksum mode however is relevant.
	 */

	FUNC6();

	ila = FUNC2(iaddr, skb->dev->ifindex, ilan);
	if (ila)
		FUNC3(skb, &ila->xp.ip, sir2ila);

	FUNC7();

	return 0;
}