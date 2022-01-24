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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;
struct rxrpc_sock {int /*<<< orphan*/  recvmsg_lock; int /*<<< orphan*/  recvmsg_q; struct sock sk; } ;
struct rxrpc_call {int /*<<< orphan*/  recvmsg_link; int /*<<< orphan*/  notify_lock; int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  (* notify_rx ) (struct sock*,struct rxrpc_call*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  socket; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CLOSE ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  (*) (struct sock*)) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct rxrpc_sock* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  rxrpc_call_got ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct rxrpc_call *call)
{
	struct rxrpc_sock *rx;
	struct sock *sk;

	FUNC1("%d", call->debug_id);

	if (!FUNC4(&call->recvmsg_link))
		return;

	FUNC6();

	rx = FUNC5(call->socket);
	sk = &rx->sk;
	if (rx && sk->sk_state < RXRPC_CLOSE) {
		if (call->notify_rx) {
			FUNC10(&call->notify_lock);
			call->notify_rx(sk, call, call->user_call_ID);
			FUNC11(&call->notify_lock);
		} else {
			FUNC14(&rx->recvmsg_lock);
			if (FUNC4(&call->recvmsg_link)) {
				FUNC8(call, rxrpc_call_got);
				FUNC3(&call->recvmsg_link, &rx->recvmsg_q);
			}
			FUNC15(&rx->recvmsg_lock);

			if (!FUNC9(sk, SOCK_DEAD)) {
				FUNC0("call %ps", sk->sk_data_ready);
				sk->sk_data_ready(sk);
			}
		}
	}

	FUNC7();
	FUNC2("");
}