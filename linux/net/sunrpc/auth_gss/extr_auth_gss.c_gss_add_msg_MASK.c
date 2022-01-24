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
struct rpc_pipe {int /*<<< orphan*/  lock; int /*<<< orphan*/  in_downcall; } ;
struct gss_upcall_msg {int /*<<< orphan*/  list; int /*<<< orphan*/  count; int /*<<< orphan*/  auth; int /*<<< orphan*/  uid; struct rpc_pipe* pipe; } ;

/* Variables and functions */
 struct gss_upcall_msg* FUNC0 (struct rpc_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct gss_upcall_msg *
FUNC5(struct gss_upcall_msg *gss_msg)
{
	struct rpc_pipe *pipe = gss_msg->pipe;
	struct gss_upcall_msg *old;

	FUNC3(&pipe->lock);
	old = FUNC0(pipe, gss_msg->uid, gss_msg->auth);
	if (old == NULL) {
		FUNC2(&gss_msg->count);
		FUNC1(&gss_msg->list, &pipe->in_downcall);
	} else
		gss_msg = old;
	FUNC4(&pipe->lock);
	return gss_msg;
}