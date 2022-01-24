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
struct rpc_pipe {int /*<<< orphan*/  lock; } ;
struct gss_upcall_msg {int /*<<< orphan*/  list; struct rpc_pipe* pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gss_upcall_msg*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct gss_upcall_msg *gss_msg)
{
	struct rpc_pipe *pipe = gss_msg->pipe;

	if (FUNC1(&gss_msg->list))
		return;
	FUNC2(&pipe->lock);
	if (!FUNC1(&gss_msg->list))
		FUNC0(gss_msg);
	FUNC3(&pipe->lock);
}