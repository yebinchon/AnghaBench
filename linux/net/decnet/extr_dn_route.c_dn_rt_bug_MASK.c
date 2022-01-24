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
struct dn_skb_cb {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	struct dn_skb_cb *cb = FUNC0(skb);

	FUNC3("dn_rt_bug: skb from:%04x to:%04x\n",
			    FUNC2(cb->src), FUNC2(cb->dst));

	FUNC1(skb);

	return NET_RX_DROP;
}