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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ht; } ;

/* Variables and functions */
 int RAW_HTABLE_SIZE ; 
 struct sock* FUNC0 (struct net*,struct sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct net* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__ raw_v4_hashinfo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC7 (struct sock*) ; 

void FUNC8(struct sk_buff *skb, int protocol, u32 info)
{
	int hash;
	struct sock *raw_sk;
	const struct iphdr *iph;
	struct net *net;

	hash = protocol & (RAW_HTABLE_SIZE - 1);

	FUNC4(&raw_v4_hashinfo.lock);
	raw_sk = FUNC6(&raw_v4_hashinfo.ht[hash]);
	if (raw_sk) {
		int dif = skb->dev->ifindex;
		int sdif = FUNC2(skb);

		iph = (const struct iphdr *)skb->data;
		net = FUNC1(skb->dev);

		while ((raw_sk = FUNC0(net, raw_sk, protocol,
						iph->daddr, iph->saddr,
						dif, sdif)) != NULL) {
			FUNC3(raw_sk, skb, info);
			raw_sk = FUNC7(raw_sk);
			iph = (const struct iphdr *)skb->data;
		}
	}
	FUNC5(&raw_v4_hashinfo.lock);
}