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
struct sock {void (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_callback_lock; struct rds_conn_path* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_data_ready ) (struct sock*) ;} ;
struct rds_conn_path {int /*<<< orphan*/  cp_recv_w; int /*<<< orphan*/  cp_conn; struct rds_tcp_connection* cp_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_conn_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC6 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_tcp_data_ready_calls ; 

void FUNC9(struct sock *sk)
{
	void (*ready)(struct sock *sk);
	struct rds_conn_path *cp;
	struct rds_tcp_connection *tc;

	FUNC6("data ready sk %p\n", sk);

	FUNC7(&sk->sk_callback_lock);
	cp = sk->sk_user_data;
	if (!cp) { /* check for teardown race */
		ready = sk->sk_data_ready;
		goto out;
	}

	tc = cp->cp_transport_data;
	ready = tc->t_orig_data_ready;
	FUNC5(s_tcp_data_ready_calls);

	if (FUNC4(cp, GFP_ATOMIC) == -ENOMEM) {
		FUNC1();
		if (!FUNC3(cp->cp_conn))
			FUNC0(rds_wq, &cp->cp_recv_w, 0);
		FUNC2();
	}
out:
	FUNC8(&sk->sk_callback_lock);
	ready(sk);
}