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
struct rpc_message {int /*<<< orphan*/ * rpc_proc; struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; } ;
struct nfs_removeres {int /*<<< orphan*/  dir_attr; int /*<<< orphan*/  seq_res; int /*<<< orphan*/  server; } ;
struct nfs_removeargs {int /*<<< orphan*/  seq_args; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rpc_message *msg,
		struct dentry *dentry,
		struct inode *inode)
{
	struct nfs_removeargs *args = msg->rpc_argp;
	struct nfs_removeres *res = msg->rpc_resp;

	res->server = FUNC0(dentry->d_sb);
	msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_REMOVE];
	FUNC1(&args->seq_args, &res->seq_res, 1, 0);

	FUNC3(res->dir_attr);

	if (inode)
		FUNC2(inode);
}