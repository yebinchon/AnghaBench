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
struct rpc_message {struct nfs4_lookup_res* rpc_resp; struct nfs4_lookup_arg* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct qstr {int name; } ;
struct nfs_server {int /*<<< orphan*/  attr_bitmask; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_lookup_res {int /*<<< orphan*/  seq_res; struct nfs_fh* fh; struct nfs4_label* label; struct nfs_fattr* fattr; struct nfs_server* server; } ;
struct nfs4_lookup_arg {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  bitmask; struct qstr const* name; int /*<<< orphan*/  dir_fh; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*,struct nfs4_label*) ; 
 int FUNC4 (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_fattr*) ; 

__attribute__((used)) static int FUNC6(struct rpc_clnt *clnt, struct inode *dir,
		const struct qstr *name, struct nfs_fh *fhandle,
		struct nfs_fattr *fattr, struct nfs4_label *label)
{
	struct nfs_server *server = FUNC1(dir);
	int		       status;
	struct nfs4_lookup_arg args = {
		.bitmask = server->attr_bitmask,
		.dir_fh = FUNC0(dir),
		.name = name,
	};
	struct nfs4_lookup_res res = {
		.server = server,
		.fattr = fattr,
		.label = label,
		.fh = fhandle,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOOKUP],
		.rpc_argp = &args,
		.rpc_resp = &res,
	};

	args.bitmask = FUNC3(server, label);

	FUNC5(fattr);

	FUNC2("NFS call  lookup %s\n", name->name);
	status = FUNC4(clnt, server, &msg, &args.seq_args, &res.seq_res, 0);
	FUNC2("NFS reply lookup: %d\n", status);
	return status;
}