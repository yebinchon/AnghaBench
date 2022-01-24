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
struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  osr_seq_res; } ;
struct nfs42_offloadcancel_data {int /*<<< orphan*/  seq_server; TYPE_1__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, void *calldata)
{
	struct nfs42_offloadcancel_data *data = calldata;

	FUNC0(task, &data->res.osr_seq_res);
	if (task->tk_status &&
		FUNC1(task, data->seq_server, NULL,
			NULL) == -EAGAIN)
		FUNC2(task);
}