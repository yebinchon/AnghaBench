#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {struct sk_buff* sk_tx_skb_cache; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ icsk_backoff; } ;
struct TYPE_4__ {scalar_t__ packets_out; int /*<<< orphan*/  tsorted_sent_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TCP_CHRONO_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

void FUNC11(struct sock *sk)
{
	struct sk_buff *skb;

	FUNC6(sk, TCP_CHRONO_BUSY);
	while ((skb = FUNC2(&sk->sk_write_queue)) != NULL) {
		FUNC10(skb);
		FUNC5(sk, skb);
	}
	FUNC8(sk);
	skb = sk->sk_tx_skb_cache;
	if (skb) {
		FUNC1(skb);
		sk->sk_tx_skb_cache = NULL;
	}
	FUNC0(&FUNC9(sk)->tsorted_sent_queue);
	FUNC4(sk);
	FUNC7(FUNC9(sk));
	FUNC9(sk)->packets_out = 0;
	FUNC3(sk)->icsk_backoff = 0;
}