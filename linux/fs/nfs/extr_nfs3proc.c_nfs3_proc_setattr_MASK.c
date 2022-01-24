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
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs_fattr* rpc_resp; struct nfs3_sattrargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_fattr {int dummy; } ;
struct nfs3_sattrargs {struct iattr* sattr; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_file; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;

/* Variables and functions */
 int ATTR_FILE ; 
 size_t NFS3PROC_SETATTR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int NFS_INO_INVALID_ACL ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct iattr*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct dentry *dentry, struct nfs_fattr *fattr,
			struct iattr *sattr)
{
	struct inode *inode = FUNC3(dentry);
	struct nfs3_sattrargs	arg = {
		.fh		= FUNC1(inode),
		.sattr		= sattr,
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_SETATTR],
		.rpc_argp	= &arg,
		.rpc_resp	= fattr,
	};
	int	status;

	FUNC4("NFS call  setattr\n");
	if (sattr->ia_valid & ATTR_FILE)
		msg.rpc_cred = FUNC6(sattr->ia_file);
	FUNC5(fattr);
	status = FUNC9(FUNC0(inode), &msg, 0);
	if (status == 0) {
		if (FUNC2(inode)->cache_validity & NFS_INO_INVALID_ACL)
			FUNC8(inode);
		FUNC7(inode, sattr, fattr);
	}
	FUNC4("NFS reply setattr: %d\n", status);
	return status;
}