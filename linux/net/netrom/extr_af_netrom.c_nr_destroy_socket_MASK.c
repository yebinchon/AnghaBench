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
struct TYPE_4__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct sock {TYPE_2__ sk_timer; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NR_STATE_0 ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  nr_destroy_timer ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC15(struct sock *sk)
{
	struct sk_buff *skb;

	FUNC3(sk);

	FUNC6(sk);
	FUNC8(sk);
	FUNC9(sk);
	FUNC10(sk);
	FUNC7(sk);

	FUNC2(sk);		/* Flush the queues */

	while ((skb = FUNC12(&sk->sk_receive_queue)) != NULL) {
		if (skb->sk != sk) { /* A pending connection */
			/* Queue the unaccepted socket for death */
			FUNC14(skb->sk, SOCK_DEAD);
			FUNC5(skb->sk);
			FUNC4(skb->sk)->state = NR_STATE_0;
		}

		FUNC1(skb);
	}

	if (FUNC11(sk)) {
		/* Defer: outstanding buffers */
		sk->sk_timer.function = nr_destroy_timer;
		sk->sk_timer.expires  = jiffies + 2 * HZ;
		FUNC0(&sk->sk_timer);
	} else
		FUNC13(sk);
}