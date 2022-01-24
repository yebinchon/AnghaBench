#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ROSE_STATE_0 ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  rose_destroy_timer ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC14(struct sock *sk)
{
	struct sk_buff *skb;

	FUNC3(sk);
	FUNC6(sk);
	FUNC7(sk);
	FUNC8(sk);

	FUNC2(sk);		/* Flush the queues */

	while ((skb = FUNC10(&sk->sk_receive_queue)) != NULL) {
		if (skb->sk != sk) {	/* A pending connection */
			/* Queue the unaccepted socket for death */
			FUNC12(skb->sk, SOCK_DEAD);
			FUNC5(skb->sk);
			FUNC4(skb->sk)->state = ROSE_STATE_0;
		}

		FUNC1(skb);
	}

	if (FUNC9(sk)) {
		/* Defer: outstanding buffers */
		FUNC13(&sk->sk_timer, rose_destroy_timer, 0);
		sk->sk_timer.expires  = jiffies + 10 * HZ;
		FUNC0(&sk->sk_timer);
	} else
		FUNC11(sk);
}