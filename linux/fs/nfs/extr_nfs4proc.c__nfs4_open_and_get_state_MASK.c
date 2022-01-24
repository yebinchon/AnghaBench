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
struct nfs_server {int caps; } ;
struct nfs_open_context {struct dentry* dentry; struct nfs4_state* state; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_reclaim_seqcount; int /*<<< orphan*/  so_cred; struct nfs_server* so_server; } ;
struct nfs4_state {scalar_t__ inode; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int rflags; int /*<<< orphan*/  seq_res; } ;
struct nfs4_opendata {TYPE_1__ o_res; int /*<<< orphan*/  cancelled; int /*<<< orphan*/  lgp; struct dentry* dir; struct dentry* dentry; struct nfs4_state_owner* owner; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_state*) ; 
 int NFS4_OPEN_RESULT_MAY_NOTIFY_LOCK ; 
 int NFS_CAP_POSIX_LOCK ; 
 int /*<<< orphan*/  NFS_STATE_MAY_NOTIFY_LOCK ; 
 int /*<<< orphan*/  NFS_STATE_POSIX_LOCKS ; 
 int FUNC1 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_open_context*) ; 
 struct nfs4_state* FUNC3 (struct nfs4_opendata*) ; 
 int FUNC4 (struct nfs4_opendata*,struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 struct dentry* FUNC9 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct nfs4_opendata*,struct nfs4_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_server*,struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,struct nfs_open_context*) ; 
 unsigned int FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct nfs4_opendata *opendata,
		int flags, struct nfs_open_context *ctx)
{
	struct nfs4_state_owner *sp = opendata->owner;
	struct nfs_server *server = sp->so_server;
	struct dentry *dentry;
	struct nfs4_state *state;
	fmode_t acc_mode = FUNC2(ctx);
	unsigned int seq;
	int ret;

	seq = FUNC19(&sp->so_reclaim_seqcount);

	ret = FUNC4(opendata, ctx);
	if (ret != 0)
		goto out;

	state = FUNC3(opendata);
	ret = FUNC1(state);
	if (FUNC0(state))
		goto out;
	ctx->state = state;
	if (server->caps & NFS_CAP_POSIX_LOCK)
		FUNC21(NFS_STATE_POSIX_LOCKS, &state->flags);
	if (opendata->o_res.rflags & NFS4_OPEN_RESULT_MAY_NOTIFY_LOCK)
		FUNC21(NFS_STATE_MAY_NOTIFY_LOCK, &state->flags);

	dentry = opendata->dentry;
	if (FUNC8(dentry)) {
		struct dentry *alias;
		FUNC5(dentry);
		alias = FUNC6(dentry, state->inode);
		if (!alias)
			alias = FUNC9(FUNC11(state->inode), dentry);
		/* d_splice_alias() can't fail here - it's a non-directory */
		if (alias) {
			FUNC10(ctx->dentry);
			ctx->dentry = dentry = alias;
		}
		FUNC17(dentry,
				FUNC16(FUNC7(opendata->dir)));
	}

	/* Parse layoutget results before we check for access */
	FUNC18(state->inode, opendata->lgp, ctx);

	ret = FUNC12(sp->so_cred, opendata, state,
			acc_mode, flags);
	if (ret != 0)
		goto out;

	if (FUNC7(dentry) == state->inode) {
		FUNC15(ctx);
		if (FUNC20(&sp->so_reclaim_seqcount, seq))
			FUNC13(server, state);
	}

out:
	if (!opendata->cancelled)
		FUNC14(&opendata->o_res.seq_res);
	return ret;
}