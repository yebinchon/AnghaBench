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
struct sock {int sk_state; scalar_t__ sk_backlog_rcv; } ;
struct pep_sock {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAD ; 
 int /*<<< orphan*/  PNS_PEP_DISCONNECT_REQ ; 
 int TCPF_ESTABLISHED ; 
 int TCPF_SYN_RECV ; 
 int TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 scalar_t__ pipe_do_rcv ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk, long timeout)
{
	struct pep_sock *pn = FUNC2(sk);
	int ifindex = 0;

	FUNC7(sk); /* keep a reference after sk_common_release() */
	FUNC6(sk);

	FUNC1(sk);
	if ((1 << sk->sk_state) & (TCPF_SYN_RECV|TCPF_ESTABLISHED)) {
		if (sk->sk_backlog_rcv == pipe_do_rcv)
			/* Forcefully remove dangling Phonet pipe */
			FUNC3(sk);
		else
			FUNC4(sk, PNS_PEP_DISCONNECT_REQ, PAD,
						NULL, 0);
	}
	sk->sk_state = TCP_CLOSE;

	ifindex = pn->ifindex;
	pn->ifindex = 0;
	FUNC5(sk);

	if (ifindex)
		FUNC0(sk);
	FUNC8(sk);
}