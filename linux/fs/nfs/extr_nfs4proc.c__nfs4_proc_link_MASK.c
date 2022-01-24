#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_message {struct nfs4_link_res* rpc_resp; struct nfs4_link_arg* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct qstr {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs4_link_res {TYPE_1__* fattr; int /*<<< orphan*/ * label; int /*<<< orphan*/  cinfo; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs4_link_arg {int /*<<< orphan*/  seq_args; int /*<<< orphan*/ * bitmask; struct qstr const* name; int /*<<< orphan*/  dir_fh; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_5__ {int /*<<< orphan*/  time_start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int NFS4_BITMASK_SZ ; 
 size_t NFSPROC4_CLNT_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct nfs_server* FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_server*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC8 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (struct inode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, struct inode *dir, const struct qstr *name)
{
	struct nfs_server *server = FUNC2(inode);
	__u32 bitmask[NFS4_BITMASK_SZ];
	struct nfs4_link_arg arg = {
		.fh     = FUNC1(inode),
		.dir_fh = FUNC1(dir),
		.name   = name,
		.bitmask = bitmask,
	};
	struct nfs4_link_res res = {
		.server = server,
		.label = NULL,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LINK],
		.rpc_argp = &arg,
		.rpc_resp = &res,
	};
	int status = -ENOMEM;

	res.fattr = FUNC10();
	if (res.fattr == NULL)
		goto out;

	res.label = FUNC8(server, GFP_KERNEL);
	if (FUNC0(res.label)) {
		status = FUNC3(res.label);
		goto out;
	}

	FUNC7(inode);
	FUNC4(bitmask, FUNC5(server, res.label), inode);

	status = FUNC6(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);
	if (!status) {
		FUNC14(dir, &res.cinfo, res.fattr->time_start, 0);
		status = FUNC12(inode, res.fattr);
		if (!status)
			FUNC13(inode, res.fattr, res.label);
	}


	FUNC9(res.label);

out:
	FUNC11(res.fattr);
	return status;
}