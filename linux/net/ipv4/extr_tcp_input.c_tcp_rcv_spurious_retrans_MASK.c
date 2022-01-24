#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ seq; } ;
struct TYPE_5__ {TYPE_1__* duplicate_sack; } ;
struct TYPE_4__ {scalar_t__ start_seq; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, const struct sk_buff *skb)
{
	/* When the ACK path fails or drops most ACKs, the sender would
	 * timeout and spuriously retransmit the same segment repeatedly.
	 * The receiver remembers and reflects via DSACKs. Leverage the
	 * DSACK state and change the txhash to re-route speculatively.
	 */
	if (FUNC0(skb)->seq == FUNC2(sk)->duplicate_sack[0].start_seq)
		FUNC1(sk);
}