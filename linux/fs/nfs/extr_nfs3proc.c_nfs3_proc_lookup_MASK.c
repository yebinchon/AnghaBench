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
struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs_fh* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int name; int /*<<< orphan*/  len; } ;
struct nfs_fh {int name; int /*<<< orphan*/  len; int /*<<< orphan*/  fh; } ;
struct nfs_fattr {int valid; int /*<<< orphan*/ * dir_attr; struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs4_label {int dummy; } ;
struct nfs3_diropres {int valid; int /*<<< orphan*/ * dir_attr; struct nfs3_diropres* fattr; struct nfs_fh* fh; } ;
struct nfs3_diropargs {int name; int /*<<< orphan*/  len; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFS3PROC_GETATTR ; 
 size_t NFS3PROC_LOOKUP ; 
 int NFS_ATTR_FATTR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * nfs3_procedures ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct inode *dir, const struct qstr *name,
		 struct nfs_fh *fhandle, struct nfs_fattr *fattr,
		 struct nfs4_label *label)
{
	struct nfs3_diropargs	arg = {
		.fh		= FUNC1(dir),
		.name		= name->name,
		.len		= name->len
	};
	struct nfs3_diropres	res = {
		.fh		= fhandle,
		.fattr		= fattr
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs3_procedures[NFS3PROC_LOOKUP],
		.rpc_argp	= &arg,
		.rpc_resp	= &res,
	};
	int			status;

	FUNC2("NFS call  lookup %s\n", name->name);
	res.dir_attr = FUNC3();
	if (res.dir_attr == NULL)
		return -ENOMEM;

	FUNC4(fattr);
	status = FUNC7(FUNC0(dir), &msg, 0);
	FUNC6(dir, res.dir_attr);
	if (status >= 0 && !(fattr->valid & NFS_ATTR_FATTR)) {
		msg.rpc_proc = &nfs3_procedures[NFS3PROC_GETATTR];
		msg.rpc_argp = fhandle;
		msg.rpc_resp = fattr;
		status = FUNC7(FUNC0(dir), &msg, 0);
	}
	FUNC5(res.dir_attr);
	FUNC2("NFS reply lookup: %d\n", status);
	return status;
}