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
struct tcp_sock {int ecn_flags; int /*<<< orphan*/  rcv_nxt; } ;
struct sock {scalar_t__ sk_state; } ;
struct dctcp {scalar_t__ ce_state; scalar_t__ loss_cwnd; int /*<<< orphan*/  dctcp_alpha; int /*<<< orphan*/  prior_rcv_nxt; } ;
struct TYPE_2__ {int /*<<< orphan*/ * icsk_ca_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCTCP_MAX_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ TCP_CLOSE ; 
 int TCP_ECN_OK ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  dctcp_alpha_on_init ; 
 int /*<<< orphan*/  dctcp_reno ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock const*,struct dctcp*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 struct dctcp* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC5(sk);

	if ((tp->ecn_flags & TCP_ECN_OK) ||
	    (sk->sk_state == TCP_LISTEN ||
	     sk->sk_state == TCP_CLOSE)) {
		struct dctcp *ca = FUNC3(sk);

		ca->prior_rcv_nxt = tp->rcv_nxt;

		ca->dctcp_alpha = FUNC4(dctcp_alpha_on_init, DCTCP_MAX_ALPHA);

		ca->loss_cwnd = 0;
		ca->ce_state = 0;

		FUNC1(tp, ca);
		return;
	}

	/* No ECN support? Fall back to Reno. Also need to clear
	 * ECT from sk since it is set during 3WHS for DCTCP.
	 */
	FUNC2(sk)->icsk_ca_ops = &dctcp_reno;
	FUNC0(sk);
}