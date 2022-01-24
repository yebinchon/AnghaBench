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
struct rpc_message {struct nfs42_falloc_res* rpc_resp; struct nfs42_falloc_args* rpc_argp; } ;
struct nfs_server {int /*<<< orphan*/  client; int /*<<< orphan*/  cache_consistency_bitmask; } ;
struct nfs_lock_context {int /*<<< orphan*/  open_context; } ;
struct nfs42_falloc_res {int /*<<< orphan*/  falloc_fattr; int /*<<< orphan*/  seq_res; struct nfs_server* falloc_server; } ;
struct nfs42_falloc_args {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  falloc_stateid; int /*<<< orphan*/  falloc_bitmask; int /*<<< orphan*/  falloc_length; int /*<<< orphan*/  falloc_offset; int /*<<< orphan*/  falloc_fh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfs_lock_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rpc_message *msg, struct file *filep,
		struct nfs_lock_context *lock, loff_t offset, loff_t len)
{
	struct inode *inode = FUNC2(filep);
	struct nfs_server *server = FUNC1(inode);
	struct nfs42_falloc_args args = {
		.falloc_fh	= FUNC0(inode),
		.falloc_offset	= offset,
		.falloc_length	= len,
		.falloc_bitmask	= server->cache_consistency_bitmask,
	};
	struct nfs42_falloc_res res = {
		.falloc_server	= server,
	};
	int status;

	msg->rpc_argp = &args;
	msg->rpc_resp = &res;

	status = FUNC5(&args.falloc_stateid, lock->open_context,
			lock, FMODE_WRITE);
	if (status)
		return status;

	res.falloc_fattr = FUNC6();
	if (!res.falloc_fattr)
		return -ENOMEM;

	status = FUNC4(server->client, server, msg,
				&args.seq_args, &res.seq_res, 0);
	if (status == 0)
		status = FUNC7(inode, res.falloc_fattr);

	FUNC3(res.falloc_fattr);
	return status;
}