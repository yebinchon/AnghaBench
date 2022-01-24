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
struct rpc_pipe {scalar_t__ nreaders; scalar_t__ nwriters; int /*<<< orphan*/  queue_timeout; TYPE_1__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dentry; scalar_t__ pipelen; int /*<<< orphan*/  pipe; int /*<<< orphan*/  in_upcall; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct rpc_pipe* pipe; int /*<<< orphan*/  waitq; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release_pipe ) (struct inode*) ;int /*<<< orphan*/  destroy_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_list ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static void
FUNC11(struct inode *inode)
{
	struct rpc_pipe *pipe = FUNC1(inode)->pipe;
	int need_release;
	FUNC0(free_list);

	FUNC3(inode);
	FUNC8(&pipe->lock);
	need_release = pipe->nreaders != 0 || pipe->nwriters != 0;
	pipe->nreaders = 0;
	FUNC5(&pipe->in_upcall, &free_list);
	FUNC5(&pipe->pipe, &free_list);
	pipe->pipelen = 0;
	pipe->dentry = NULL;
	FUNC9(&pipe->lock);
	FUNC7(&FUNC1(inode)->waitq, &free_list, pipe->ops->destroy_msg, -EPIPE);
	pipe->nwriters = 0;
	if (need_release && pipe->ops->release_pipe)
		pipe->ops->release_pipe(inode);
	FUNC2(&pipe->queue_timeout);
	FUNC6(inode, NULL);
	FUNC1(inode)->pipe = NULL;
	FUNC4(inode);
}