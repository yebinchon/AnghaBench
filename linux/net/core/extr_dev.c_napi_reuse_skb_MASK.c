#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ encapsulation; int /*<<< orphan*/  pkt_type; scalar_t__ skb_iif; int /*<<< orphan*/  dev; int /*<<< orphan*/  pfmemalloc; } ;
struct napi_struct {struct sk_buff* skb; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ gso_type; } ;

/* Variables and functions */
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ NET_SKB_PAD ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct napi_struct *napi, struct sk_buff *skb)
{
	if (FUNC10(skb->pfmemalloc)) {
		FUNC3(skb);
		return;
	}
	FUNC1(skb, FUNC6(skb));
	/* restore the reserve we had after netdev_alloc_skb_ip_align() */
	FUNC8(skb, NET_SKB_PAD + NET_IP_ALIGN - FUNC7(skb));
	FUNC2(skb);
	skb->dev = napi->dev;
	skb->skb_iif = 0;

	/* eth_type_trans() assumes pkt_type is PACKET_HOST */
	skb->pkt_type = PACKET_HOST;

	skb->encapsulation = 0;
	FUNC9(skb)->gso_type = 0;
	skb->truesize = FUNC0(FUNC4(skb));
	FUNC5(skb);

	napi->skb = skb;
}