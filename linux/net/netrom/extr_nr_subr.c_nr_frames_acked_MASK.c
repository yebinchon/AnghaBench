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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {unsigned short va; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int NR_MODULUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct nr_sock* FUNC1 (struct sock*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sock *sk, unsigned short nr)
{
	struct nr_sock *nrom = FUNC1(sk);
	struct sk_buff *skb;

	/*
	 * Remove all the ack-ed frames from the ack queue.
	 */
	if (nrom->va != nr) {
		while (FUNC3(&nrom->ack_queue) != NULL && nrom->va != nr) {
			skb = FUNC2(&nrom->ack_queue);
			FUNC0(skb);
			nrom->va = (nrom->va + 1) % NR_MODULUS;
		}
	}
}