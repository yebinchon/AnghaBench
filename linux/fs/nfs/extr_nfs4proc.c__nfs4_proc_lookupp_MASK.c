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
struct rpc_message {struct nfs4_lookupp_res* rpc_resp; struct nfs4_lookupp_arg* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  attr_bitmask; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_lookupp_res {int /*<<< orphan*/  seq_res; struct nfs_fh* fh; struct nfs4_label* label; struct nfs_fattr* fattr; struct nfs_server* server; } ;
struct nfs4_lookupp_arg {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  bitmask; int /*<<< orphan*/  fh; } ;
struct nfs4_label {int dummy; } ;
struct inode {int i_ino; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_LOOKUPP ; 
 struct rpc_clnt* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct nfs_server* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*,struct nfs4_label*) ; 
 int FUNC5 (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_fattr*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
		struct nfs_fh *fhandle, struct nfs_fattr *fattr,
		struct nfs4_label *label)
{
	struct rpc_clnt *clnt = FUNC0(inode);
	struct nfs_server *server = FUNC2(inode);
	int		       status;
	struct nfs4_lookupp_arg args = {
		.bitmask = server->attr_bitmask,
		.fh = FUNC1(inode),
	};
	struct nfs4_lookupp_res res = {
		.server = server,
		.fattr = fattr,
		.label = label,
		.fh = fhandle,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOOKUPP],
		.rpc_argp = &args,
		.rpc_resp = &res,
	};

	args.bitmask = FUNC4(server, label);

	FUNC6(fattr);

	FUNC3("NFS call  lookupp ino=0x%lx\n", inode->i_ino);
	status = FUNC5(clnt, server, &msg, &args.seq_args,
				&res.seq_res, 0);
	FUNC3("NFS reply lookupp: %d\n", status);
	return status;
}