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
struct nr_sock {int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_CHOKE_FLAG ; 
 int NR_COND_OWN_RX_BUSY ; 
 struct nr_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct sk_buff *skb)
{
	struct nr_sock *nr = FUNC0(sk);

	if (skb == NULL)
		return;

	skb->data[2] = nr->vs;
	skb->data[3] = nr->vr;

	if (nr->condition & NR_COND_OWN_RX_BUSY)
		skb->data[4] |= NR_CHOKE_FLAG;

	FUNC1(sk);

	FUNC2(sk, skb);
}