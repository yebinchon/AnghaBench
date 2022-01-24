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
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_DEFRAG_LOCAL_DELIVER ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_IN ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_local_deliver_finish ; 

int FUNC5(struct sk_buff *skb)
{
	/*
	 *	Reassemble IP fragments.
	 */
	struct net *net = FUNC1(skb->dev);

	if (FUNC4(FUNC3(skb))) {
		if (FUNC2(net, skb, IP_DEFRAG_LOCAL_DELIVER))
			return 0;
	}

	return FUNC0(NFPROTO_IPV4, NF_INET_LOCAL_IN,
		       net, NULL, skb, skb->dev, NULL,
		       ip_local_deliver_finish);
}