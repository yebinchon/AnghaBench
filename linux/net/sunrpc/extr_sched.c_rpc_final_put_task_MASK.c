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
struct workqueue_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tk_work; } ;
struct rpc_task {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_async_release ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task,
		struct workqueue_struct *q)
{
	if (q != NULL) {
		FUNC0(&task->u.tk_work, rpc_async_release);
		FUNC1(q, &task->u.tk_work);
	} else
		FUNC2(task);
}