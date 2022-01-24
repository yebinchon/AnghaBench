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
struct rpc_pipe_msg {int /*<<< orphan*/  list; int /*<<< orphan*/  errno; } ;
struct rpc_pipe {scalar_t__ nwriters; scalar_t__ nreaders; TYPE_1__* ops; int /*<<< orphan*/  lock; scalar_t__ pipelen; int /*<<< orphan*/  pipe; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct rpc_pipe_msg* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  waitq; struct rpc_pipe* pipe; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release_pipe ) (struct inode*) ;int /*<<< orphan*/  (* destroy_msg ) (struct rpc_pipe_msg*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  free_list ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct rpc_pipe_msg*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_pipe_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static int
FUNC11(struct inode *inode, struct file *filp)
{
	struct rpc_pipe *pipe;
	struct rpc_pipe_msg *msg;
	int last_close;

	FUNC2(inode);
	pipe = FUNC1(inode)->pipe;
	if (pipe == NULL)
		goto out;
	msg = filp->private_data;
	if (msg != NULL) {
		FUNC7(&pipe->lock);
		msg->errno = -EAGAIN;
		FUNC4(&msg->list);
		FUNC8(&pipe->lock);
		pipe->ops->destroy_msg(msg);
	}
	if (filp->f_mode & FMODE_WRITE)
		pipe->nwriters --;
	if (filp->f_mode & FMODE_READ) {
		pipe->nreaders --;
		if (pipe->nreaders == 0) {
			FUNC0(free_list);
			FUNC7(&pipe->lock);
			FUNC5(&pipe->pipe, &free_list);
			pipe->pipelen = 0;
			FUNC8(&pipe->lock);
			FUNC6(&FUNC1(inode)->waitq, &free_list,
					pipe->ops->destroy_msg, -EAGAIN);
		}
	}
	last_close = pipe->nwriters == 0 && pipe->nreaders == 0;
	if (last_close && pipe->ops->release_pipe)
		pipe->ops->release_pipe(inode);
out:
	FUNC3(inode);
	return 0;
}