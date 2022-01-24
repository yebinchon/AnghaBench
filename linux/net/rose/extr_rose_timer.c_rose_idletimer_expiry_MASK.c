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
struct timer_list {int dummy; } ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_state; } ;
struct rose_sock {struct sock sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROSE_CLEAR_REQUEST ; 
 int /*<<< orphan*/  ROSE_STATE_2 ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct rose_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idletimer ; 
 struct rose_sock* rose ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct rose_sock *rose = FUNC2(rose, t, idletimer);
	struct sock *sk = &rose->sock;

	FUNC0(sk);
	FUNC3(sk);

	FUNC6(sk, ROSE_CLEAR_REQUEST);
	FUNC4(sk)->state = ROSE_STATE_2;

	FUNC5(sk);

	sk->sk_state     = TCP_CLOSE;
	sk->sk_err       = 0;
	sk->sk_shutdown |= SEND_SHUTDOWN;

	if (!FUNC7(sk, SOCK_DEAD)) {
		sk->sk_state_change(sk);
		FUNC8(sk, SOCK_DEAD);
	}
	FUNC1(sk);
}