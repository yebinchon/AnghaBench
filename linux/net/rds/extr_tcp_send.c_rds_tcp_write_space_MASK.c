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
struct sock {void (* sk_write_space ) (struct sock*) ;int sk_sndbuf; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_wmem_alloc; struct rds_conn_path* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_write_space ) (struct sock*) ;struct rds_tcp_connection* t_last_seen_una; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_send_w; int /*<<< orphan*/  cp_conn; struct rds_tcp_connection* cp_transport_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_conn_path*,struct rds_tcp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_tcp_is_acked ; 
 struct rds_tcp_connection* FUNC5 (struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC7 (char*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_tcp_write_space_calls ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct sock *sk)
{
	void (*write_space)(struct sock *sk);
	struct rds_conn_path *cp;
	struct rds_tcp_connection *tc;

	FUNC8(&sk->sk_callback_lock);
	cp = sk->sk_user_data;
	if (!cp) {
		write_space = sk->sk_write_space;
		goto out;
	}

	tc = cp->cp_transport_data;
	FUNC7("write_space for tc %p\n", tc);
	write_space = tc->t_orig_write_space;
	FUNC6(s_tcp_write_space_calls);

	FUNC7("tcp una %u\n", FUNC5(tc));
	tc->t_last_seen_una = FUNC5(tc);
	FUNC4(cp, FUNC5(tc), rds_tcp_is_acked);

	FUNC1();
	if ((FUNC10(&sk->sk_wmem_alloc) << 1) <= sk->sk_sndbuf &&
	    !FUNC3(cp->cp_conn))
		FUNC0(rds_wq, &cp->cp_send_w, 0);
	FUNC2();

out:
	FUNC9(&sk->sk_callback_lock);

	/*
	 * write_space is only called when data leaves tcp's send queue if
	 * SOCK_NOSPACE is set.  We set SOCK_NOSPACE every time we put
	 * data in tcp's send queue because we use write_space to parse the
	 * sequence numbers and notice that rds messages have been fully
	 * received.
	 *
	 * tcp's write_space clears SOCK_NOSPACE if the send queue has more
	 * than a certain amount of space. So we need to set it again *after*
	 * we call tcp's write_space or else we might only get called on the
	 * first of a series of incoming tcp acks.
	 */
	write_space(sk);

	if (sk->sk_socket)
		FUNC11(SOCK_NOSPACE, &sk->sk_socket->flags);
}