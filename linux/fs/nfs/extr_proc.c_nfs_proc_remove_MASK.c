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
struct rpc_message {struct nfs_removeargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_removeargs {int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 size_t NFSPROC_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct inode *dir, struct dentry *dentry)
{
	struct nfs_removeargs arg = {
		.fh = FUNC1(dir),
		.name = dentry->d_name,
	};
	struct rpc_message msg = { 
		.rpc_proc = &nfs_procedures[NFSPROC_REMOVE],
		.rpc_argp = &arg,
	};
	int			status;

	FUNC2("NFS call  remove %pd2\n",dentry);
	status = FUNC4(FUNC0(dir), &msg, 0);
	FUNC3(dir);

	FUNC2("NFS reply remove: %d\n", status);
	return status;
}