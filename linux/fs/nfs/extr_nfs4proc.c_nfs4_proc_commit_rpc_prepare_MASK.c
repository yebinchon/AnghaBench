#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int /*<<< orphan*/  inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  nfs_client; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 

__attribute__((used)) static void FUNC2(struct rpc_task *task, struct nfs_commit_data *data)
{
	FUNC1(FUNC0(data->inode)->nfs_client,
			&data->args.seq_args,
			&data->res.seq_res,
			task);
}