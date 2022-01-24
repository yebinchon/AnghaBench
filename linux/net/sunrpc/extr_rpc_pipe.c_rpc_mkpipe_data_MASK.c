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
struct rpc_pipe_ops {int dummy; } ;
struct rpc_pipe {int flags; struct rpc_pipe_ops const* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_pipe* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_pipe*) ; 
 struct rpc_pipe* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct rpc_pipe *FUNC3(const struct rpc_pipe_ops *ops, int flags)
{
	struct rpc_pipe *pipe;

	pipe = FUNC2(sizeof(struct rpc_pipe), GFP_KERNEL);
	if (!pipe)
		return FUNC0(-ENOMEM);
	FUNC1(pipe);
	pipe->ops = ops;
	pipe->flags = flags;
	return pipe;
}