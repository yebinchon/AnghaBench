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
struct rpcrdma_req {int /*<<< orphan*/  rl_list; int /*<<< orphan*/ * rl_reply; } ;
struct rpcrdma_buffer {int /*<<< orphan*/  rb_lock; int /*<<< orphan*/  rb_send_bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rpcrdma_buffer *buffers, struct rpcrdma_req *req)
{
	if (req->rl_reply)
		FUNC1(buffers, req->rl_reply);
	req->rl_reply = NULL;

	FUNC2(&buffers->rb_lock);
	FUNC0(&req->rl_list, &buffers->rb_send_bufs);
	FUNC3(&buffers->rb_lock);
}