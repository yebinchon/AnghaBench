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
struct x25_sock {int /*<<< orphan*/  fragment_queue; int /*<<< orphan*/  interrupt_out_queue; int /*<<< orphan*/  interrupt_in_queue; int /*<<< orphan*/  ack_queue; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct x25_sock* FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk)
{
	struct x25_sock *x25 = FUNC1(sk);

	FUNC0(&sk->sk_write_queue);
	FUNC0(&x25->ack_queue);
	FUNC0(&x25->interrupt_in_queue);
	FUNC0(&x25->interrupt_out_queue);
	FUNC0(&x25->fragment_queue);
}