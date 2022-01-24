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
struct rpc_message {struct nfs42_clone_res* rpc_resp; struct nfs42_clone_args* rpc_argp; } ;
struct nfs_server {int /*<<< orphan*/  client; int /*<<< orphan*/  cache_consistency_bitmask; } ;
struct nfs_lock_context {int /*<<< orphan*/  open_context; } ;
struct nfs42_clone_res {int /*<<< orphan*/  dst_fattr; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs42_clone_args {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  dst_stateid; int /*<<< orphan*/  src_stateid; int /*<<< orphan*/  dst_bitmask; int /*<<< orphan*/  count; int /*<<< orphan*/  dst_offset; int /*<<< orphan*/  src_offset; int /*<<< orphan*/  dst_fh; int /*<<< orphan*/  src_fh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfs_lock_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rpc_message *msg, struct file *src_f,
		struct file *dst_f, struct nfs_lock_context *src_lock,
		struct nfs_lock_context *dst_lock, loff_t src_offset,
		loff_t dst_offset, loff_t count)
{
	struct inode *src_inode = FUNC2(src_f);
	struct inode *dst_inode = FUNC2(dst_f);
	struct nfs_server *server = FUNC1(dst_inode);
	struct nfs42_clone_args args = {
		.src_fh = FUNC0(src_inode),
		.dst_fh = FUNC0(dst_inode),
		.src_offset = src_offset,
		.dst_offset = dst_offset,
		.count = count,
		.dst_bitmask = server->cache_consistency_bitmask,
	};
	struct nfs42_clone_res res = {
		.server	= server,
	};
	int status;

	msg->rpc_argp = &args;
	msg->rpc_resp = &res;

	status = FUNC5(&args.src_stateid, src_lock->open_context,
			src_lock, FMODE_READ);
	if (status)
		return status;

	status = FUNC5(&args.dst_stateid, dst_lock->open_context,
			dst_lock, FMODE_WRITE);
	if (status)
		return status;

	res.dst_fattr = FUNC6();
	if (!res.dst_fattr)
		return -ENOMEM;

	status = FUNC4(server->client, server, msg,
				&args.seq_args, &res.seq_res, 0);
	if (status == 0)
		status = FUNC7(dst_inode, res.dst_fattr);

	FUNC3(res.dst_fattr);
	return status;
}