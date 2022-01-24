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
struct tcp_congestion_ops {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int icsk_ca_setsockopt; int /*<<< orphan*/  icsk_ca_priv; struct tcp_congestion_ops const* icsk_ca_ops; } ;

/* Variables and functions */
 scalar_t__ TCP_CLOSE ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk,
					  const struct tcp_congestion_ops *ca)
{
	struct inet_connection_sock *icsk = FUNC0(sk);

	FUNC2(sk);
	icsk->icsk_ca_ops = ca;
	icsk->icsk_ca_setsockopt = 1;
	FUNC1(icsk->icsk_ca_priv, 0, sizeof(icsk->icsk_ca_priv));

	if (sk->sk_state != TCP_CLOSE)
		FUNC3(sk);
}