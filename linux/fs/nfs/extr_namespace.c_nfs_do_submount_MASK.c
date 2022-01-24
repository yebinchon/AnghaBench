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
struct vfsmount {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs_clone_mount {int /*<<< orphan*/  authflavor; struct nfs_fattr* fattr; struct nfs_fh* fh; struct dentry* dentry; int /*<<< orphan*/  sb; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vfsmount* FUNC0 (char*) ; 
 struct vfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_USER ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 char* FUNC6 (struct dentry*,char*,int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC7 (int /*<<< orphan*/ ,char*,struct nfs_clone_mount*) ; 

struct vfsmount *FUNC8(struct dentry *dentry, struct nfs_fh *fh,
				 struct nfs_fattr *fattr, rpc_authflavor_t authflavor)
{
	struct nfs_clone_mount mountdata = {
		.sb = dentry->d_sb,
		.dentry = dentry,
		.fh = fh,
		.fattr = fattr,
		.authflavor = authflavor,
	};
	struct vfsmount *mnt;
	char *page = (char *) FUNC4(GFP_USER);
	char *devname;

	if (page == NULL)
		return FUNC1(-ENOMEM);

	devname = FUNC6(dentry, page, PAGE_SIZE);
	if (FUNC2(devname))
		mnt = FUNC0(devname);
	else
		mnt = FUNC7(FUNC3(dentry->d_sb), devname, &mountdata);

	FUNC5((unsigned long)page);
	return mnt;
}