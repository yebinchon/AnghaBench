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
struct Qdisc {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETIF_F_GSO_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct sk_buff *skb, struct Qdisc *sch,
				     struct sk_buff **to_free)
{
	struct sk_buff *segs;
	netdev_features_t features = FUNC2(skb);

	segs = FUNC4(skb, features & ~NETIF_F_GSO_MASK);

	if (FUNC0(segs)) {
		FUNC3(skb, sch, to_free);
		return NULL;
	}
	FUNC1(skb);
	return segs;
}