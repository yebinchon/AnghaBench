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
struct sock {int dummy; } ;
struct sk_buff {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; } ;
struct hlist_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct hlist_head* ht; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 struct sock* FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hlist_head*) ; 
 struct net* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*) ; 
 TYPE_1__ raw_v4_hashinfo ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, const struct iphdr *iph, int hash)
{
	int sdif = FUNC6(skb);
	int dif = FUNC5(skb);
	struct sock *sk;
	struct hlist_head *head;
	int delivered = 0;
	struct net *net;

	FUNC9(&raw_v4_hashinfo.lock);
	head = &raw_v4_hashinfo.ht[hash];
	if (FUNC3(head))
		goto out;

	net = FUNC2(skb->dev);
	sk = FUNC0(net, FUNC1(head), iph->protocol,
			     iph->saddr, iph->daddr, dif, sdif);

	while (sk) {
		delivered = 1;
		if ((iph->protocol != IPPROTO_ICMP || !FUNC4(sk, skb)) &&
		    FUNC7(sk, iph->daddr, iph->saddr,
				   skb->dev->ifindex, sdif)) {
			struct sk_buff *clone = FUNC12(skb, GFP_ATOMIC);

			/* Not releasing hash table! */
			if (clone)
				FUNC8(sk, clone);
		}
		sk = FUNC0(net, FUNC11(sk), iph->protocol,
				     iph->saddr, iph->daddr,
				     dif, sdif);
	}
out:
	FUNC10(&raw_v4_hashinfo.lock);
	return delivered;
}