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
struct rpc_message {struct nfs_commitres* rpc_resp; struct nfs_commitargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_commitres {int /*<<< orphan*/  seq_res; } ;
struct nfs_commitargs {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 

__attribute__((used)) static int FUNC4(struct file *dst, struct nfs_commitargs *args,
				struct nfs_commitres *res)
{
	struct inode *dst_inode = FUNC2(dst);
	struct nfs_server *server = FUNC1(dst_inode);
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_COMMIT],
		.rpc_argp = args,
		.rpc_resp = res,
	};

	args->fh = FUNC0(dst_inode);
	return FUNC3(server->client, server, &msg,
			&args->seq_args, &res->seq_res, 1);
}