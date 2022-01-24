#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ethernet {int /*<<< orphan*/  eth_dst; int /*<<< orphan*/  eth_src; } ;
struct TYPE_6__ {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct sw_flow_key *flow_key,
			const struct ovs_key_ethernet *key,
			const struct ovs_key_ethernet *mask)
{
	int err;

	err = FUNC3(skb, ETH_HLEN);
	if (FUNC6(err))
		return err;

	FUNC4(skb, FUNC0(skb), ETH_ALEN * 2);

	FUNC2(FUNC0(skb)->h_source, key->eth_src,
			       mask->eth_src);
	FUNC2(FUNC0(skb)->h_dest, key->eth_dst,
			       mask->eth_dst);

	FUNC5(skb, FUNC0(skb), ETH_ALEN * 2);

	FUNC1(flow_key->eth.src, FUNC0(skb)->h_source);
	FUNC1(flow_key->eth.dst, FUNC0(skb)->h_dest);
	return 0;
}