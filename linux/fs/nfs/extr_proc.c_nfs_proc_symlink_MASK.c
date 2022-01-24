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
struct rpc_message {struct nfs_symlinkargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_symlinkargs {unsigned int pathlen; struct iattr* sattr; struct page** pages; int /*<<< orphan*/  fromlen; int /*<<< orphan*/  fromname; int /*<<< orphan*/  fromfh; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 unsigned int NFS2_MAXPATHLEN ; 
 size_t NFSPROC_SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct nfs_fattr* FUNC3 () ; 
 struct nfs_fh* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_fh*) ; 
 int FUNC7 (struct dentry*,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC9 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct inode *dir, struct dentry *dentry, struct page *page,
		 unsigned int len, struct iattr *sattr)
{
	struct nfs_fh *fh;
	struct nfs_fattr *fattr;
	struct nfs_symlinkargs	arg = {
		.fromfh		= FUNC1(dir),
		.fromname	= dentry->d_name.name,
		.fromlen	= dentry->d_name.len,
		.pages		= &page,
		.pathlen	= len,
		.sattr		= sattr
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_SYMLINK],
		.rpc_argp	= &arg,
	};
	int status = -ENAMETOOLONG;

	FUNC2("NFS call  symlink %pd\n", dentry);

	if (len > NFS2_MAXPATHLEN)
		goto out;

	fh = FUNC4();
	fattr = FUNC3();
	status = -ENOMEM;
	if (fh == NULL || fattr == NULL)
		goto out_free;

	status = FUNC9(FUNC0(dir), &msg, 0);
	FUNC8(dir);

	/*
	 * V2 SYMLINK requests don't return any attributes.  Setting the
	 * filehandle size to zero indicates to nfs_instantiate that it
	 * should fill in the data with a LOOKUP call on the wire.
	 */
	if (status == 0)
		status = FUNC7(dentry, fh, fattr, NULL);

out_free:
	FUNC5(fattr);
	FUNC6(fh);
out:
	FUNC2("NFS reply symlink: %d\n", status);
	return status;
}