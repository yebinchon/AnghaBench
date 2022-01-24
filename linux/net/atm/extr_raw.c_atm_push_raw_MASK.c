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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct atm_vcc *vcc, struct sk_buff *skb)
{
	if (skb) {
		struct sock *sk = FUNC0(vcc);

		FUNC1(&sk->sk_receive_queue, skb);
		sk->sk_data_ready(sk);
	}
}