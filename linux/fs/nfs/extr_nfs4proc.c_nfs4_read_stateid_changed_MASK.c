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
struct rpc_task {int /*<<< orphan*/  tk_status; } ;
struct nfs_pgio_args {int /*<<< orphan*/  lock_context; int /*<<< orphan*/  context; int /*<<< orphan*/  stateid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static bool FUNC3(struct rpc_task *task,
		struct nfs_pgio_args *args)
{

	if (!FUNC0(task->tk_status) ||
		FUNC1(&args->stateid,
				args->context,
				args->lock_context,
				FMODE_READ))
		return false;
	FUNC2(task);
	return true;
}