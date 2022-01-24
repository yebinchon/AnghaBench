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
struct nfs_server {int /*<<< orphan*/  read_hdrsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  replen; } ;
struct nfs_pgio_header {int (* pgio_done_cb ) (struct rpc_task*,struct nfs_pgio_header*) ;int /*<<< orphan*/  fattr; TYPE_1__ res; struct inode* inode; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rpc_task*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct rpc_task*,struct nfs_pgio_header*) ; 

__attribute__((used)) static int FUNC6(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
	struct inode *inode = hdr->inode;
	struct nfs_server *server = FUNC0(inode);

	if (hdr->pgio_done_cb != NULL)
		return hdr->pgio_done_cb(task, hdr);

	if (FUNC2(task, inode))
		return -EAGAIN;

	if (task->tk_status >= 0 && !server->read_hdrsize)
		FUNC1(&server->read_hdrsize, 0, hdr->res.replen);

	FUNC3(inode);
	FUNC4(inode, &hdr->fattr);
	return 0;
}