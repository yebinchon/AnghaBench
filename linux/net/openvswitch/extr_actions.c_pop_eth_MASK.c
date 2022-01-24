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
struct sw_flow_key {int /*<<< orphan*/  mac_proto; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  MAC_PROTO_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct sw_flow_key *key)
{
	FUNC1(skb, ETH_HLEN);
	FUNC2(skb);
	FUNC3(skb);

	/* safe right before invalidate_flow_key */
	key->mac_proto = MAC_PROTO_NONE;
	FUNC0(key);
	return 0;
}