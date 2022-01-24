#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int dummy; } ;
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_stateid; } ;
struct nfs_server {int /*<<< orphan*/  nfs_client; } ;
struct TYPE_8__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_7__ {unsigned int num_errors; int /*<<< orphan*/  seq_args; TYPE_2__* errors; } ;
struct nfs42_layouterror_data {TYPE_4__ res; TYPE_3__ args; TYPE_1__* lseg; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  stateid; } ;
struct TYPE_5__ {struct pnfs_layout_hdr* pls_layout; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct rpc_task *task, void *calldata)
{
	struct nfs42_layouterror_data *data = calldata;
	struct inode *inode = data->inode;
	struct nfs_server *server = FUNC0(inode);
	struct pnfs_layout_hdr *lo = data->lseg->pls_layout;
	unsigned i;

	FUNC5(&inode->i_lock);
	if (!FUNC3(lo)) {
		FUNC6(&inode->i_lock);
		FUNC4(task, 0);
		return;
	}
	for (i = 0; i < data->args.num_errors; i++)
		FUNC2(&data->args.errors[i].stateid,
				&lo->plh_stateid);
	FUNC6(&inode->i_lock);
	FUNC1(server->nfs_client, &data->args.seq_args,
			    &data->res.seq_res, task);
}