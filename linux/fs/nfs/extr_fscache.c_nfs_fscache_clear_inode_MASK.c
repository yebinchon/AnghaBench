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
struct TYPE_2__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct nfs_inode {int /*<<< orphan*/ * fscache; TYPE_1__ vfs_inode; } ;
struct nfs_fscache_inode_auxdata {void* ctime; void* mtime; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
typedef  int /*<<< orphan*/  auxdata ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct nfs_inode*,struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_cookie*,struct nfs_fscache_inode_auxdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_fscache_inode_auxdata*,int /*<<< orphan*/ ,int) ; 
 struct fscache_cookie* FUNC4 (struct inode*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct inode *inode)
{
	struct nfs_fscache_inode_auxdata auxdata;
	struct nfs_inode *nfsi = FUNC0(inode);
	struct fscache_cookie *cookie = FUNC4(inode);

	FUNC1(FSCACHE, "NFS: clear cookie (0x%p/0x%p)\n", nfsi, cookie);

	FUNC3(&auxdata, 0, sizeof(auxdata));
	auxdata.mtime = FUNC5(nfsi->vfs_inode.i_mtime);
	auxdata.ctime = FUNC5(nfsi->vfs_inode.i_ctime);
	FUNC2(cookie, &auxdata, false);
	nfsi->fscache = NULL;
}