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
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs3_accessres* rpc_resp; struct nfs3_accessargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_access_entry {int /*<<< orphan*/  cred; int /*<<< orphan*/  mask; } ;
struct nfs3_accessres {int /*<<< orphan*/ * fattr; int /*<<< orphan*/  access; } ;
struct nfs3_accessargs {int /*<<< orphan*/  access; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_access_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct nfs_access_entry *entry)
{
	struct nfs3_accessargs	arg = {
		.fh		= FUNC1(inode),
		.access		= entry->mask,
	};
	struct nfs3_accessres	res;
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_ACCESS],
		.rpc_argp	= &arg,
		.rpc_resp	= &res,
		.rpc_cred	= entry->cred,
	};
	int status = -ENOMEM;

	FUNC2("NFS call  access\n");
	res.fattr = FUNC4();
	if (res.fattr == NULL)
		goto out;

	status = FUNC7(FUNC0(inode), &msg, 0);
	FUNC6(inode, res.fattr);
	if (status == 0)
		FUNC3(entry, res.access);
	FUNC5(res.fattr);
out:
	FUNC2("NFS reply access: %d\n", status);
	return status;
}