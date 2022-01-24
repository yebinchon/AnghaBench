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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdu_unack_q; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct llc_pdu_sn* FUNC2 (struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct sk_buff *skb;

	while ((skb = FUNC5(&sk->sk_write_queue)) != NULL) {
		struct llc_pdu_sn *pdu = FUNC2(skb);

		if (FUNC0(pdu) &&
		    !(skb->dev->flags & IFF_LOOPBACK)) {
			struct sk_buff *skb2 = FUNC4(skb, GFP_ATOMIC);

			FUNC6(&FUNC3(sk)->pdu_unack_q, skb);
			if (!skb2)
				break;
			skb = skb2;
		}
		FUNC1(skb);
	}
}