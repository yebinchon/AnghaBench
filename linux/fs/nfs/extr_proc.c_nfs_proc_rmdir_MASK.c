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
struct rpc_message {struct nfs_diropargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int name; int /*<<< orphan*/  len; } ;
struct nfs_diropargs {int name; int /*<<< orphan*/  len; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC_RMDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * nfs_procedures ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct inode *dir, const struct qstr *name)
{
	struct nfs_diropargs	arg = {
		.fh		= FUNC1(dir),
		.name		= name->name,
		.len		= name->len
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs_procedures[NFSPROC_RMDIR],
		.rpc_argp	= &arg,
	};
	int			status;

	FUNC2("NFS call  rmdir %s\n", name->name);
	status = FUNC4(FUNC0(dir), &msg, 0);
	FUNC3(dir);
	FUNC2("NFS reply rmdir: %d\n", status);
	return status;
}