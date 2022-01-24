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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct nr_sock {int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; int /*<<< orphan*/  va; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NR_CHOKE_FLAG ; 
 int NR_COND_ACK_PENDING ; 
 int NR_COND_OWN_RX_BUSY ; 
 struct nr_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sock *sk)
{
	struct sk_buff *skb, *skbn;
	struct nr_sock *nr = FUNC0(sk);

	if ((skb = FUNC4(&nr->ack_queue)) == NULL)
		return;

	if ((skbn = FUNC3(skb, GFP_ATOMIC)) == NULL)
		return;

	skbn->data[2] = nr->va;
	skbn->data[3] = nr->vr;

	if (nr->condition & NR_COND_OWN_RX_BUSY)
		skbn->data[4] |= NR_CHOKE_FLAG;

	FUNC2(sk, skbn);

	nr->condition &= ~NR_COND_ACK_PENDING;
	nr->vl         = nr->vr;

	FUNC1(sk);
}