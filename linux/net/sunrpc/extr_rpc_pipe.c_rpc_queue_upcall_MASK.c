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
struct rpc_pipe_msg {scalar_t__ len; int /*<<< orphan*/  list; } ;
struct rpc_pipe {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  dentry; int /*<<< orphan*/  pipelen; int /*<<< orphan*/  pipe; int /*<<< orphan*/  queue_timeout; scalar_t__ nreaders; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 int EPIPE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int RPC_PIPE_WAIT_FOR_OPEN ; 
 int /*<<< orphan*/  RPC_UPCALL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct rpc_pipe *pipe, struct rpc_pipe_msg *msg)
{
	int res = -EPIPE;
	struct dentry *dentry;

	FUNC7(&pipe->lock);
	if (pipe->nreaders) {
		FUNC4(&msg->list, &pipe->pipe);
		pipe->pipelen += msg->len;
		res = 0;
	} else if (pipe->flags & RPC_PIPE_WAIT_FOR_OPEN) {
		if (FUNC5(&pipe->pipe))
			FUNC6(rpciod_workqueue,
					&pipe->queue_timeout,
					RPC_UPCALL_TIMEOUT);
		FUNC4(&msg->list, &pipe->pipe);
		pipe->pipelen += msg->len;
		res = 0;
	}
	dentry = FUNC2(pipe->dentry);
	FUNC8(&pipe->lock);
	if (dentry) {
		FUNC9(&FUNC0(FUNC1(dentry))->waitq);
		FUNC3(dentry);
	}
	return res;
}