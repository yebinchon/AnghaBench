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
struct rpc_task {scalar_t__ tk_status; } ;
struct nfs_pgio_header {int (* pgio_done_cb ) (struct rpc_task*,struct nfs_pgio_header*) ;struct inode* inode; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct rpc_task*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*) ; 
 int FUNC2 (struct rpc_task*,struct nfs_pgio_header*) ; 

__attribute__((used)) static int FUNC3(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
	struct inode *inode = hdr->inode;

	if (hdr->pgio_done_cb != NULL)
		return hdr->pgio_done_cb(task, hdr);

	if (FUNC0(task, inode))
		return -EAGAIN;
	if (task->tk_status >= 0)
		FUNC1(hdr);
	return 0;
}