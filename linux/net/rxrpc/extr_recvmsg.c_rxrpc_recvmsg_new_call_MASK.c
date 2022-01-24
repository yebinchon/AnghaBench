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
struct rxrpc_sock {int /*<<< orphan*/  call_lock; int /*<<< orphan*/  to_be_accepted; int /*<<< orphan*/  recvmsg_lock; } ;
struct rxrpc_call {int /*<<< orphan*/  accept_link; int /*<<< orphan*/  recvmsg_link; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int MSG_PEEK ; 
 int /*<<< orphan*/  RXRPC_NEW_CALL ; 
 int /*<<< orphan*/  SOL_RXRPC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  rxrpc_call_got ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_recvmsg_to_be_accepted ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct rxrpc_sock *rx,
				  struct rxrpc_call *call,
				  struct msghdr *msg, int flags)
{
	int tmp = 0, ret;

	ret = FUNC3(msg, SOL_RXRPC, RXRPC_NEW_CALL, 0, &tmp);

	if (ret == 0 && !(flags & MSG_PEEK)) {
		FUNC0("to be accepted");
		FUNC7(&rx->recvmsg_lock);
		FUNC2(&call->recvmsg_link);
		FUNC9(&rx->recvmsg_lock);

		FUNC4(call, rxrpc_call_got);
		FUNC6(&rx->call_lock);
		FUNC1(&call->accept_link, &rx->to_be_accepted);
		FUNC8(&rx->call_lock);
	}

	FUNC5(call, rxrpc_recvmsg_to_be_accepted, 1, 0, 0, ret);
	return ret;
}