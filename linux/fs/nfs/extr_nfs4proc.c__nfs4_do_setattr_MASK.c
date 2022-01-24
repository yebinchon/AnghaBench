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
struct rpc_message {struct cred const* rpc_cred; struct nfs_setattrres* rpc_resp; struct nfs_setattrargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_setattrres {int /*<<< orphan*/  seq_res; int /*<<< orphan*/  fattr; } ;
struct nfs_setattrargs {int /*<<< orphan*/  stateid; int /*<<< orphan*/  seq_args; TYPE_1__* iap; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_open_context {scalar_t__ state; } ;
struct nfs_lock_context {int dummy; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int ia_valid; } ;

/* Variables and functions */
 int ATTR_SIZE ; 
 int EBADF ; 
 int EIO ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct nfs_lock_context*) ; 
 size_t NFSPROC4_CLNT_SETATTR ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (struct nfs_lock_context*) ; 
 unsigned long jiffies ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cred const**) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct nfs_lock_context*,int /*<<< orphan*/ *,struct cred const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct nfs_lock_context* FUNC9 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_server*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zero_stateid ; 

__attribute__((used)) static int FUNC14(struct inode *inode,
			    struct nfs_setattrargs *arg,
			    struct nfs_setattrres *res,
			    const struct cred *cred,
			    struct nfs_open_context *ctx)
{
	struct nfs_server *server = FUNC1(inode);
	struct rpc_message msg = {
		.rpc_proc	= &nfs4_procedures[NFSPROC4_CLNT_SETATTR],
		.rpc_argp	= arg,
		.rpc_resp	= res,
		.rpc_cred	= cred,
	};
	const struct cred *delegation_cred = NULL;
	unsigned long timestamp = jiffies;
	bool truncate;
	int status;

	FUNC8(res->fattr);

	/* Servers should only apply open mode checks for file size changes */
	truncate = (arg->iap->ia_valid & ATTR_SIZE) ? true : false;
	if (!truncate)
		goto zero_stateid;

	if (FUNC4(inode, FMODE_WRITE, &arg->stateid, &delegation_cred)) {
		/* Use that stateid */
	} else if (ctx != NULL && ctx->state) {
		struct nfs_lock_context *l_ctx;
		if (!FUNC7(ctx->state))
			return -EBADF;
		l_ctx = FUNC9(ctx);
		if (FUNC0(l_ctx))
			return FUNC2(l_ctx);
		status = FUNC5(ctx->state, FMODE_WRITE, l_ctx,
						&arg->stateid, &delegation_cred);
		FUNC10(l_ctx);
		if (status == -EIO)
			return -EBADF;
	} else {
zero_stateid:
		FUNC6(&arg->stateid, &zero_stateid);
	}
	if (delegation_cred)
		msg.rpc_cred = delegation_cred;

	status = FUNC3(server->client, server, &msg, &arg->seq_args, &res->seq_res, 1);

	FUNC11(delegation_cred);
	if (status == 0 && ctx != NULL)
		FUNC12(server, timestamp);
	FUNC13(inode, &arg->stateid, status);
	return status;
}