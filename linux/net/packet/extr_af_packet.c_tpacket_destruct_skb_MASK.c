#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  pg_vec; } ;
struct packet_sock {int /*<<< orphan*/  skb_completion; TYPE_1__ tx_ring; } ;
typedef  int __u32 ;

/* Variables and functions */
 int TP_STATUS_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (struct packet_sock*,void*,int) ; 
 int FUNC1 (struct packet_sock*,void*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct packet_sock* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb)
{
	struct packet_sock *po = FUNC6(skb->sk);

	if (FUNC3(po->tx_ring.pg_vec)) {
		void *ph;
		__u32 ts;

		ph = FUNC7(skb);
		FUNC4(&po->tx_ring);

		ts = FUNC1(po, ph, skb);
		FUNC0(po, ph, TP_STATUS_AVAILABLE | ts);

		if (!FUNC5(&po->tx_ring))
			FUNC2(&po->skb_completion);
	}

	FUNC8(skb);
}