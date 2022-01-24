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
struct rxrpc_call {int /*<<< orphan*/  waitq; int /*<<< orphan*/  flags; scalar_t__ call_id; int /*<<< orphan*/  debug_id; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  RXRPC_CALL_IS_INTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  myself ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct rxrpc_call *call, gfp_t gfp)
{
	int ret = 0;

	FUNC2("%d", call->debug_id);

	if (!call->call_id) {
		FUNC0(myself, current);

		if (!FUNC5(gfp)) {
			ret = -EAGAIN;
			goto out;
		}

		FUNC4(&call->waitq, &myself);
		for (;;) {
			if (FUNC11(RXRPC_CALL_IS_INTR, &call->flags))
				FUNC8(TASK_INTERRUPTIBLE);
			else
				FUNC8(TASK_UNINTERRUPTIBLE);
			if (call->call_id)
				break;
			if (FUNC11(RXRPC_CALL_IS_INTR, &call->flags) &&
			    FUNC9(current)) {
				ret = -ERESTARTSYS;
				break;
			}
			FUNC7();
		}
		FUNC6(&call->waitq, &myself);
		FUNC1(TASK_RUNNING);
	}

	/* Paired with the write barrier in rxrpc_activate_one_channel(). */
	FUNC10();

out:
	FUNC3(" = %d", ret);
	return ret;
}