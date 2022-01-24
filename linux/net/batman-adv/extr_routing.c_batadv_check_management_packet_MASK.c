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
struct ethhdr {int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct batadv_hard_iface {int dummy; } ;

/* Variables and functions */
 struct ethhdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

bool FUNC7(struct sk_buff *skb,
				    struct batadv_hard_iface *hard_iface,
				    int header_len)
{
	struct ethhdr *ethhdr;

	/* drop packet if it has not necessary minimum size */
	if (FUNC6(!FUNC3(skb, header_len)))
		return false;

	ethhdr = FUNC0(skb);

	/* packet with broadcast indication but unicast recipient */
	if (!FUNC1(ethhdr->h_dest))
		return false;

	/* packet with invalid sender address */
	if (!FUNC2(ethhdr->h_source))
		return false;

	/* create a copy of the skb, if needed, to modify it. */
	if (FUNC4(skb, 0) < 0)
		return false;

	/* keep skb linear */
	if (FUNC5(skb) < 0)
		return false;

	return true;
}