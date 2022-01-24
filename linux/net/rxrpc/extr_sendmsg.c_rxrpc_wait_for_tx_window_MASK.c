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
struct rxrpc_sock {int dummy; } ;
struct rxrpc_call {int /*<<< orphan*/  waitq; int /*<<< orphan*/  tx_winsize; int /*<<< orphan*/  tx_top; int /*<<< orphan*/  tx_hard_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  myself ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct rxrpc_sock*,struct rxrpc_call*,long*) ; 
 int FUNC6 (struct rxrpc_sock*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rxrpc_sock *rx,
				    struct rxrpc_call *call,
				    long *timeo,
				    bool waitall)
{
	FUNC0(myself, current);
	int ret;

	FUNC1(",{%u,%u,%u}",
	       call->tx_hard_ack, call->tx_top, call->tx_winsize);

	FUNC3(&call->waitq, &myself);

	if (waitall)
		ret = FUNC6(rx, call);
	else
		ret = FUNC5(rx, call, timeo);

	FUNC4(&call->waitq, &myself);
	FUNC7(TASK_RUNNING);
	FUNC2(" = %d", ret);
	return ret;
}