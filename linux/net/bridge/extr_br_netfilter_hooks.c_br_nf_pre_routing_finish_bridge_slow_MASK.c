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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nf_bridge_info {int /*<<< orphan*/ * physoutdev; int /*<<< orphan*/  physindev; int /*<<< orphan*/  neigh_header; scalar_t__ bridged_dnat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETH_ALEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nf_bridge_info* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct nf_bridge_info *nf_bridge = FUNC3(skb);

	FUNC5(skb, ETH_HLEN);
	nf_bridge->bridged_dnat = 0;

	FUNC0(sizeof(nf_bridge->neigh_header) != (ETH_HLEN - ETH_ALEN));

	FUNC4(skb, -(ETH_HLEN - ETH_ALEN),
				       nf_bridge->neigh_header,
				       ETH_HLEN - ETH_ALEN);
	skb->dev = nf_bridge->physindev;

	nf_bridge->physoutdev = NULL;
	FUNC1(FUNC2(skb->dev), NULL, skb);
}