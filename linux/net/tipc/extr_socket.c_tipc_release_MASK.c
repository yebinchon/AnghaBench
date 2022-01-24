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
struct TYPE_2__ {int /*<<< orphan*/  deferredq; } ;
struct tipc_sock {int /*<<< orphan*/  rcu; scalar_t__ cong_link_cnt; int /*<<< orphan*/  cong_links; TYPE_1__ mc_method; } ;
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_timer; int /*<<< orphan*/  sk_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tipc_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  tipc_sk_callback ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct tipc_sock *tsk;

	/*
	 * Exit if socket isn't fully initialized (occurs when a failed accept()
	 * releases a pre-allocated child socket that was never used)
	 */
	if (sk == NULL)
		return 0;

	tsk = FUNC8(sk);
	FUNC3(sk);

	FUNC12(sk, NULL, TIPC_DUMP_ALL, " ");
	FUNC1(sock, TIPC_ERR_NO_PORT);
	sk->sk_shutdown = SHUTDOWN_MASK;
	FUNC9(tsk);
	FUNC11(tsk, 0, NULL);
	FUNC0(&tsk->mc_method.deferredq);
	FUNC5(sk, &sk->sk_timer);
	FUNC10(tsk);

	FUNC6(sk);
	/* Reject any messages that accumulated in backlog queue */
	FUNC4(sk);
	FUNC7(&tsk->cong_links);
	tsk->cong_link_cnt = 0;
	FUNC2(&tsk->rcu, tipc_sk_callback);
	sock->sk = NULL;

	return 0;
}