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
struct rpc_task {scalar_t__ tk_status; } ;
struct nlm_rqst {struct nlm_block* a_block; } ;
struct nlm_block {int /*<<< orphan*/  b_daemon; int /*<<< orphan*/  b_list; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_blocked_lock ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rpc_task *task, void *data)
{
	struct nlm_rqst		*call = data;
	struct nlm_block	*block = call->a_block;
	unsigned long		timeout;

	FUNC0("lockd: GRANT_MSG RPC callback\n");

	FUNC3(&nlm_blocked_lock);
	/* if the block is not on a list at this point then it has
	 * been invalidated. Don't try to requeue it.
	 *
	 * FIXME: it's possible that the block is removed from the list
	 * after this check but before the nlmsvc_insert_block. In that
	 * case it will be added back. Perhaps we need better locking
	 * for nlm_blocked?
	 */
	if (FUNC1(&block->b_list))
		goto out;

	/* Technically, we should down the file semaphore here. Since we
	 * move the block towards the head of the queue only, no harm
	 * can be done, though. */
	if (task->tk_status < 0) {
		/* RPC error: Re-insert for retransmission */
		timeout = 10 * HZ;
	} else {
		/* Call was successful, now wait for client callback */
		timeout = 60 * HZ;
	}
	FUNC2(block, timeout);
	FUNC5(block->b_daemon);
out:
	FUNC4(&nlm_blocked_lock);
}