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
struct sock {int sk_err; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; } ;
struct rose_sock {int cause; int diagnostic; int /*<<< orphan*/  state; scalar_t__ lci; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROSE_STATE_0 ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct rose_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

void FUNC7(struct sock *sk, int reason, int cause, int diagnostic)
{
	struct rose_sock *rose = FUNC1(sk);

	FUNC3(sk);
	FUNC2(sk);

	FUNC0(sk);

	rose->lci   = 0;
	rose->state = ROSE_STATE_0;

	if (cause != -1)
		rose->cause = cause;

	if (diagnostic != -1)
		rose->diagnostic = diagnostic;

	sk->sk_state     = TCP_CLOSE;
	sk->sk_err       = reason;
	sk->sk_shutdown |= SEND_SHUTDOWN;

	if (!FUNC4(sk, SOCK_DEAD)) {
		sk->sk_state_change(sk);
		FUNC5(sk, SOCK_DEAD);
	}
}