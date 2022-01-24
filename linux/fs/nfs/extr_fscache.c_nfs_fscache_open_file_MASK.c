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
struct TYPE_2__ {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct nfs_inode {int /*<<< orphan*/  flags; TYPE_1__ vfs_inode; } ;
struct nfs_fscache_inode_auxdata {void* ctime; void* mtime; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  auxdata ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_FSCACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct nfs_inode*) ; 
 scalar_t__ FUNC3 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_cookie*,struct nfs_fscache_inode_auxdata*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_cookie*,struct nfs_fscache_inode_auxdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscache_cookie*,struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_fscache_inode_auxdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfs_fscache_can_enable ; 
 struct fscache_cookie* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct inode *inode, struct file *filp)
{
	struct nfs_fscache_inode_auxdata auxdata;
	struct nfs_inode *nfsi = FUNC0(inode);
	struct fscache_cookie *cookie = FUNC10(inode);

	if (!FUNC4(cookie))
		return;

	FUNC9(&auxdata, 0, sizeof(auxdata));
	auxdata.mtime = FUNC12(nfsi->vfs_inode.i_mtime);
	auxdata.ctime = FUNC12(nfsi->vfs_inode.i_ctime);

	if (FUNC8(inode)) {
		FUNC2(FSCACHE, "NFS: nfsi 0x%p disabling cache\n", nfsi);
		FUNC1(NFS_INO_FSCACHE, &nfsi->flags);
		FUNC5(cookie, &auxdata, true);
		FUNC7(cookie, inode);
	} else {
		FUNC2(FSCACHE, "NFS: nfsi 0x%p enabling cache\n", nfsi);
		FUNC6(cookie, &auxdata, nfsi->vfs_inode.i_size,
				      nfs_fscache_can_enable, inode);
		if (FUNC3(cookie))
			FUNC11(NFS_INO_FSCACHE, &FUNC0(inode)->flags);
	}
}