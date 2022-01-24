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
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int /*<<< orphan*/  sk_rx_dst; int /*<<< orphan*/  sk_dst_cache; int /*<<< orphan*/  sk_forward_alloc; int /*<<< orphan*/  sk_wmem_queued; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/ * sk_rx_skb_cache; int /*<<< orphan*/  sk_receive_queue; } ;
struct inet_sock {int /*<<< orphan*/  inet_opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct sock*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC13(struct sock *sk)
{
	struct inet_sock *inet = FUNC5(sk);

	FUNC2(&sk->sk_receive_queue);
	if (sk->sk_rx_skb_cache) {
		FUNC1(sk->sk_rx_skb_cache);
		sk->sk_rx_skb_cache = NULL;
	}
	FUNC2(&sk->sk_error_queue);

	FUNC10(sk);

	if (sk->sk_type == SOCK_STREAM && sk->sk_state != TCP_CLOSE) {
		FUNC7("Attempt to release TCP socket in state %d %p\n",
		       sk->sk_state, sk);
		return;
	}
	if (!FUNC12(sk, SOCK_DEAD)) {
		FUNC7("Attempt to release alive inet socket %p\n", sk);
		return;
	}

	FUNC0(FUNC3(&sk->sk_rmem_alloc));
	FUNC0(FUNC9(&sk->sk_wmem_alloc));
	FUNC0(sk->sk_wmem_queued);
	FUNC0(sk->sk_forward_alloc);

	FUNC6(FUNC8(inet->inet_opt, 1));
	FUNC4(FUNC8(sk->sk_dst_cache, 1));
	FUNC4(sk->sk_rx_dst);
	FUNC11(sk);
}