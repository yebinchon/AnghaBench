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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_stateid; } ;
struct nfs_server {int /*<<< orphan*/  nfs_client; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  stateid; } ;
struct nfs42_layoutstat_data {TYPE_2__ res; TYPE_1__ args; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_6__ {struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct rpc_task *task, void *calldata)
{
	struct nfs42_layoutstat_data *data = calldata;
	struct inode *inode = data->inode;
	struct nfs_server *server = FUNC1(inode);
	struct pnfs_layout_hdr *lo;

	FUNC6(&inode->i_lock);
	lo = FUNC0(inode)->layout;
	if (!FUNC4(lo)) {
		FUNC7(&inode->i_lock);
		FUNC5(task, 0);
		return;
	}
	FUNC3(&data->args.stateid, &lo->plh_stateid);
	FUNC7(&inode->i_lock);
	FUNC2(server->nfs_client, &data->args.seq_args,
			    &data->res.seq_res, task);
}