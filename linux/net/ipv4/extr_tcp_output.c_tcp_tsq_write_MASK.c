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
struct tcp_sock {scalar_t__ lost_out; scalar_t__ retrans_out; scalar_t__ snd_cwnd; int /*<<< orphan*/  nonagle; } ;
struct sock {int sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_CLOSING ; 
 int TCPF_ESTABLISHED ; 
 int TCPF_FIN_WAIT1 ; 
 int TCPF_LAST_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	if ((1 << sk->sk_state) &
	    (TCPF_ESTABLISHED | TCPF_FIN_WAIT1 | TCPF_CLOSING |
	     TCPF_CLOSE_WAIT  | TCPF_LAST_ACK)) {
		struct tcp_sock *tp = FUNC3(sk);

		if (tp->lost_out > tp->retrans_out &&
		    tp->snd_cwnd > FUNC2(tp)) {
			FUNC1(tp);
			FUNC5(sk);
		}

		FUNC4(sk, FUNC0(sk), tp->nonagle,
			       0, GFP_ATOMIC);
	}
}