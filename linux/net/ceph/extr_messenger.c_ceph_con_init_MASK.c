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
struct ceph_messenger {int dummy; } ;
struct ceph_connection_operations {int dummy; } ;
struct ceph_connection {int /*<<< orphan*/  state; int /*<<< orphan*/  work; int /*<<< orphan*/  out_sent; int /*<<< orphan*/  out_queue; int /*<<< orphan*/  mutex; struct ceph_messenger* msgr; struct ceph_connection_operations const* ops; void* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ceph_con_workfn ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ceph_connection *con, void *private,
	const struct ceph_connection_operations *ops,
	struct ceph_messenger *msgr)
{
	FUNC3("con_init %p\n", con);
	FUNC4(con, 0, sizeof(*con));
	con->private = private;
	con->ops = ops;
	con->msgr = msgr;

	FUNC2(con);

	FUNC5(&con->mutex);
	FUNC1(&con->out_queue);
	FUNC1(&con->out_sent);
	FUNC0(&con->work, ceph_con_workfn);

	con->state = CON_STATE_CLOSED;
}