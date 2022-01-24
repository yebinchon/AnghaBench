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
struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs3_diropargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int name; int /*<<< orphan*/  len; } ;
struct nfs_fattr {int dummy; } ;
struct nfs3_diropargs {int name; int /*<<< orphan*/  len; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_RMDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 struct nfs_fattr* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct nfs_fattr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, const struct qstr *name)
{
	struct nfs_fattr	*dir_attr;
	struct nfs3_diropargs	arg = {
		.fh		= FUNC1(dir),
		.name		= name->name,
		.len		= name->len
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_RMDIR],
		.rpc_argp	= &arg,
	};
	int status = -ENOMEM;

	FUNC2("NFS call  rmdir %s\n", name->name);
	dir_attr = FUNC3();
	if (dir_attr == NULL)
		goto out;

	msg.rpc_resp = dir_attr;
	status = FUNC6(FUNC0(dir), &msg, 0);
	FUNC5(dir, dir_attr);
	FUNC4(dir_attr);
out:
	FUNC2("NFS reply rmdir: %d\n", status);
	return status;
}