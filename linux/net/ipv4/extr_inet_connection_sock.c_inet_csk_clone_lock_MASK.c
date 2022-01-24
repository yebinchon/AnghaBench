#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_cookie; int /*<<< orphan*/  sk_mark; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_accept_queue; scalar_t__ icsk_probes_out; scalar_t__ icsk_backoff; scalar_t__ icsk_retransmits; int /*<<< orphan*/ * icsk_bind_hash; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  ir_cookie; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_num; int /*<<< orphan*/  ir_rmt_port; } ;
struct TYPE_3__ {int /*<<< orphan*/ * mc_list; int /*<<< orphan*/  inet_sport; int /*<<< orphan*/  inet_num; int /*<<< orphan*/  inet_dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_RCU_FREE ; 
 int /*<<< orphan*/  TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 TYPE_2__* FUNC4 (struct request_sock const*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct request_sock const*) ; 
 struct sock* FUNC9 (struct sock const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 

struct sock *FUNC11(const struct sock *sk,
				 const struct request_sock *req,
				 const gfp_t priority)
{
	struct sock *newsk = FUNC9(sk, priority);

	if (newsk) {
		struct inet_connection_sock *newicsk = FUNC3(newsk);

		FUNC6(newsk, TCP_SYN_RECV);
		newicsk->icsk_bind_hash = NULL;

		FUNC5(newsk)->inet_dport = FUNC4(req)->ir_rmt_port;
		FUNC5(newsk)->inet_num = FUNC4(req)->ir_num;
		FUNC5(newsk)->inet_sport = FUNC2(FUNC4(req)->ir_num);

		/* listeners have SOCK_RCU_FREE, not the children */
		FUNC10(newsk, SOCK_RCU_FREE);

		FUNC5(newsk)->mc_list = NULL;

		newsk->sk_mark = FUNC4(req)->ir_mark;
		FUNC1(&newsk->sk_cookie,
			     FUNC0(&FUNC4(req)->ir_cookie));

		newicsk->icsk_retransmits = 0;
		newicsk->icsk_backoff	  = 0;
		newicsk->icsk_probes_out  = 0;

		/* Deinitialize accept_queue to trap illegal accesses. */
		FUNC7(&newicsk->icsk_accept_queue, 0, sizeof(newicsk->icsk_accept_queue));

		FUNC8(newsk, req);
	}
	return newsk;
}