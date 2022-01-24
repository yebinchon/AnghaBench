#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rpc_message {struct nfs42_copy_res* rpc_resp; struct nfs42_copy_args* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_writeverf {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  caps; int /*<<< orphan*/  client; } ;
struct nfs_lock_context {TYPE_5__* open_context; } ;
struct TYPE_11__ {TYPE_6__* verf; } ;
struct TYPE_9__ {scalar_t__ committed; int /*<<< orphan*/  verifier; } ;
struct TYPE_10__ {size_t count; TYPE_2__ verifier; } ;
struct nfs42_copy_res {TYPE_4__ commit_res; TYPE_3__ write_res; int /*<<< orphan*/  synchronous; int /*<<< orphan*/  seq_res; } ;
struct nfs42_copy_args {size_t count; scalar_t__ sync; int /*<<< orphan*/  src_stateid; int /*<<< orphan*/  seq_args; int /*<<< orphan*/  dst_stateid; scalar_t__ dst_pos; scalar_t__ src_pos; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_13__ {int /*<<< orphan*/  verifier; } ;
struct TYPE_12__ {TYPE_1__* state; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 size_t EAGAIN ; 
 size_t ENOMEM ; 
 size_t ENOTSUPP ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t NFSPROC4_CLNT_COPY ; 
 int /*<<< orphan*/  NFS_CAP_COPY ; 
 int /*<<< orphan*/  NFS_CLNT_DST_SSC_COPY_STATE ; 
 scalar_t__ NFS_FILE_SYNC ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 size_t FUNC2 (struct nfs42_copy_res*,struct nfs_server*,struct file*,struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 TYPE_6__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,struct nfs_lock_context*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 size_t FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (struct file*,scalar_t__,struct nfs42_copy_res*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC13(struct file *src,
				struct nfs_lock_context *src_lock,
				struct file *dst,
				struct nfs_lock_context *dst_lock,
				struct nfs42_copy_args *args,
				struct nfs42_copy_res *res)
{
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_COPY],
		.rpc_argp = args,
		.rpc_resp = res,
	};
	struct inode *dst_inode = FUNC1(dst);
	struct nfs_server *server = FUNC0(dst_inode);
	loff_t pos_src = args->src_pos;
	loff_t pos_dst = args->dst_pos;
	size_t count = args->count;
	ssize_t status;

	status = FUNC6(&args->src_stateid, src_lock->open_context,
				     src_lock, FMODE_READ);
	if (status)
		return status;

	status = FUNC7(FUNC1(src)->i_mapping,
			pos_src, pos_src + (loff_t)count - 1);
	if (status)
		return status;

	status = FUNC6(&args->dst_stateid, dst_lock->open_context,
				     dst_lock, FMODE_WRITE);
	if (status)
		return status;

	status = FUNC8(dst_inode);
	if (status)
		return status;

	res->commit_res.verf = NULL;
	if (args->sync) {
		res->commit_res.verf =
			FUNC4(sizeof(struct nfs_writeverf), GFP_NOFS);
		if (!res->commit_res.verf)
			return -ENOMEM;
	}
	FUNC11(NFS_CLNT_DST_SSC_COPY_STATE,
		&dst_lock->open_context->state->flags);

	status = FUNC5(server->client, server, &msg,
				&args->seq_args, &res->seq_res, 0);
	if (status == -ENOTSUPP)
		server->caps &= ~NFS_CAP_COPY;
	if (status)
		goto out;

	if (args->sync &&
		FUNC9(&res->write_res.verifier.verifier,
				    &res->commit_res.verf->verifier)) {
		status = -EAGAIN;
		goto out;
	}

	if (!res->synchronous) {
		status = FUNC2(res, server, src, dst,
				&args->src_stateid);
		if (status)
			return status;
	}

	if ((!res->synchronous || !args->sync) &&
			res->write_res.verifier.committed != NFS_FILE_SYNC) {
		status = FUNC10(dst, pos_dst, res);
		if (status)
			return status;
	}

	FUNC12(dst_inode, pos_dst,
				 pos_dst + res->write_res.count);

	status = res->write_res.count;
out:
	if (args->sync)
		FUNC3(res->commit_res.verf);
	return status;
}