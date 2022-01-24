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
struct nfs_server {int /*<<< orphan*/  rsize; TYPE_1__* pnfs_curr_ld; } ;
struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nfs_pageio_ops* pg_read_ops; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*,struct inode*,struct nfs_pageio_ops const*,struct nfs_pgio_completion_ops const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_pageio_ops nfs_pgio_rw_ops ; 
 int /*<<< orphan*/  nfs_rw_read_ops ; 

void FUNC2(struct nfs_pageio_descriptor *pgio,
			      struct inode *inode, bool force_mds,
			      const struct nfs_pgio_completion_ops *compl_ops)
{
	struct nfs_server *server = FUNC0(inode);
	const struct nfs_pageio_ops *pg_ops = &nfs_pgio_rw_ops;

#ifdef CONFIG_NFS_V4_1
	if (server->pnfs_curr_ld && !force_mds)
		pg_ops = server->pnfs_curr_ld->pg_read_ops;
#endif
	FUNC1(pgio, inode, pg_ops, compl_ops, &nfs_rw_read_ops,
			server->rsize, 0);
}