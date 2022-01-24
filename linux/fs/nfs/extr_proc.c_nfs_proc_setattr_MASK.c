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
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs_fattr* rpc_resp; struct nfs_sattrargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_sattrargs {struct iattr* sattr; int /*<<< orphan*/  fh; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_file; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_FILE ; 
 size_t NFSPROC_SETATTR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  S_IALLUGO ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct iattr*,struct nfs_fattr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct dentry *dentry, struct nfs_fattr *fattr,
		 struct iattr *sattr)
{
	struct inode *inode = FUNC2(dentry);
	struct nfs_sattrargs	arg = { 
		.fh	= FUNC1(inode),
		.sattr	= sattr
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_SETATTR],
		.rpc_argp	= &arg,
		.rpc_resp	= fattr,
	};
	int	status;

	/* Mask out the non-modebit related stuff from attr->ia_mode */
	sattr->ia_mode &= S_IALLUGO;

	FUNC3("NFS call  setattr\n");
	if (sattr->ia_valid & ATTR_FILE)
		msg.rpc_cred = FUNC5(sattr->ia_file);
	FUNC4(fattr);
	status = FUNC7(FUNC0(inode), &msg, 0);
	if (status == 0)
		FUNC6(inode, sattr, fattr);
	FUNC3("NFS reply setattr: %d\n", status);
	return status;
}