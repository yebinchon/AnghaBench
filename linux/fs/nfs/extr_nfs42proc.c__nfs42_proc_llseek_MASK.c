#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_message {struct nfs42_seek_res* rpc_resp; struct nfs42_seek_args* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  caps; int /*<<< orphan*/  client; } ;
struct nfs_lock_context {int /*<<< orphan*/  open_context; } ;
struct nfs42_seek_res {int /*<<< orphan*/  sr_offset; int /*<<< orphan*/  seq_res; } ;
struct nfs42_seek_args {int sa_offset; int /*<<< orphan*/  seq_args; int /*<<< orphan*/  sa_stateid; int /*<<< orphan*/  sa_what; int /*<<< orphan*/  sa_fh; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_maxbytes; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  NFS4_CONTENT_DATA ; 
 int /*<<< orphan*/  NFS4_CONTENT_HOLE ; 
 size_t NFSPROC4_CLNT_SEEK ; 
 int /*<<< orphan*/  NFS_CAP_SEEK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int SEEK_HOLE ; 
 struct inode* FUNC2 (struct file*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfs_lock_context*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC8(struct file *filep,
		struct nfs_lock_context *lock, loff_t offset, int whence)
{
	struct inode *inode = FUNC2(filep);
	struct nfs42_seek_args args = {
		.sa_fh		= FUNC0(inode),
		.sa_offset	= offset,
		.sa_what	= (whence == SEEK_HOLE) ?
					NFS4_CONTENT_HOLE : NFS4_CONTENT_DATA,
	};
	struct nfs42_seek_res res;
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SEEK],
		.rpc_argp = &args,
		.rpc_resp = &res,
	};
	struct nfs_server *server = FUNC1(inode);
	int status;

	if (!FUNC6(inode, NFS_CAP_SEEK))
		return -ENOTSUPP;

	status = FUNC4(&args.sa_stateid, lock->open_context,
			lock, FMODE_READ);
	if (status)
		return status;

	status = FUNC5(inode->i_mapping,
			offset, LLONG_MAX);
	if (status)
		return status;

	status = FUNC3(server->client, server, &msg,
				&args.seq_args, &res.seq_res, 0);
	if (status == -ENOTSUPP)
		server->caps &= ~NFS_CAP_SEEK;
	if (status)
		return status;

	return FUNC7(filep, res.sr_offset, inode->i_sb->s_maxbytes);
}