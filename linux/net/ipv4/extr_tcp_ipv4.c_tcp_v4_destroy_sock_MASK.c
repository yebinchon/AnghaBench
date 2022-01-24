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
struct tcp_sock {int /*<<< orphan*/  fastopen_rsk; int /*<<< orphan*/ * md5sig_info; int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_bind_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 

void FUNC19(struct sock *sk)
{
	struct tcp_sock *tp = FUNC16(sk);

	FUNC18(sk);

	FUNC11(sk);

	FUNC8(sk);

	FUNC9(sk);

	/* Cleanup up the write buffer. */
	FUNC17(sk);

	/* Check if we want to disable active TFO */
	FUNC12(sk);

	/* Cleans up our, hopefully empty, out_of_order_queue. */
	FUNC7(&tp->out_of_order_queue);

#ifdef CONFIG_TCP_MD5SIG
	/* Clean up the MD5 key list, if any */
	if (tp->md5sig_info) {
		tcp_clear_md5_list(sk);
		kfree_rcu(rcu_dereference_protected(tp->md5sig_info, 1), rcu);
		tp->md5sig_info = NULL;
	}
#endif

	/* Clean up a referenced TCP bind bucket. */
	if (FUNC1(sk)->icsk_bind_hash)
		FUNC2(sk);

	FUNC0(FUNC4(tp->fastopen_rsk));

	/* If socket is aborted during connect operation */
	FUNC14(tp);
	FUNC13(sk);
	FUNC15(tp);

	FUNC6(sk);
}