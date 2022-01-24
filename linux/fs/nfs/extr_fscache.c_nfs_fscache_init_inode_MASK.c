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
struct nfs_server {TYPE_2__* nfs_client; scalar_t__ fscache; } ;
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct nfs_inode {struct inode vfs_inode; TYPE_3__ fh; int /*<<< orphan*/ * fscache; } ;
struct nfs_fscache_inode_auxdata {int /*<<< orphan*/  change_attr; void* ctime; void* mtime; } ;
typedef  int /*<<< orphan*/  auxdata ;
struct TYPE_8__ {int /*<<< orphan*/  fscache; } ;
struct TYPE_6__ {TYPE_1__* rpc_ops; } ;
struct TYPE_5__ {int version; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_server* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs_fscache_inode_auxdata*,int,struct nfs_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_fscache_inode_auxdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs_fscache_inode_object_def ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct inode *inode)
{
	struct nfs_fscache_inode_auxdata auxdata;
	struct nfs_server *nfss = FUNC2(inode);
	struct nfs_inode *nfsi = FUNC0(inode);

	nfsi->fscache = NULL;
	if (!(nfss->fscache && FUNC3(inode->i_mode)))
		return;

	FUNC6(&auxdata, 0, sizeof(auxdata));
	auxdata.mtime = FUNC7(nfsi->vfs_inode.i_mtime);
	auxdata.ctime = FUNC7(nfsi->vfs_inode.i_ctime);

	if (FUNC2(&nfsi->vfs_inode)->nfs_client->rpc_ops->version == 4)
		auxdata.change_attr = FUNC5(&nfsi->vfs_inode);

	nfsi->fscache = FUNC4(FUNC1(inode->i_sb)->fscache,
					       &nfs_fscache_inode_object_def,
					       nfsi->fh.data, nfsi->fh.size,
					       &auxdata, sizeof(auxdata),
					       nfsi, nfsi->vfs_inode.i_size, false);
}