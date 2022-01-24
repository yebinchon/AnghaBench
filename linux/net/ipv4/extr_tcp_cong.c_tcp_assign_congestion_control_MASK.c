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
struct tcp_congestion_ops {int flags; int /*<<< orphan*/  owner; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_congestion_control; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_ca_priv; struct tcp_congestion_ops const* icsk_ca_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int TCP_CONG_NEEDS_ECN ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tcp_congestion_ops* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct net* FUNC7 (struct sock*) ; 
 struct tcp_congestion_ops tcp_reno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct sock *sk)
{
	struct net *net = FUNC7(sk);
	struct inet_connection_sock *icsk = FUNC2(sk);
	const struct tcp_congestion_ops *ca;

	FUNC5();
	ca = FUNC4(net->ipv4.tcp_congestion_control);
	if (FUNC9(!FUNC8(ca->owner)))
		ca = &tcp_reno;
	icsk->icsk_ca_ops = ca;
	FUNC6();

	FUNC3(icsk->icsk_ca_priv, 0, sizeof(icsk->icsk_ca_priv));
	if (ca->flags & TCP_CONG_NEEDS_ECN)
		FUNC1(sk);
	else
		FUNC0(sk);
}