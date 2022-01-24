#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rx_busy_skb; scalar_t__ chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	FUNC0("sk %p", sk);

	if (FUNC3(sk)->chan)
		FUNC2(FUNC3(sk)->chan);

	if (FUNC3(sk)->rx_busy_skb) {
		FUNC1(FUNC3(sk)->rx_busy_skb);
		FUNC3(sk)->rx_busy_skb = NULL;
	}

	FUNC4(&sk->sk_receive_queue);
	FUNC4(&sk->sk_write_queue);
}