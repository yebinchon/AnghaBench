#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_seqid {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  stateid; struct nfs_seqid* seqid; int /*<<< orphan*/ * fl; int /*<<< orphan*/  fh; } ;
struct TYPE_3__ {struct nfs_seqid* seqid; } ;
struct nfs4_unlockdata {TYPE_2__ arg; int /*<<< orphan*/  server; int /*<<< orphan*/  fl; int /*<<< orphan*/  l_ctx; int /*<<< orphan*/  ctx; struct nfs4_lock_state* lsp; TYPE_1__ res; } ;
struct nfs4_state {int /*<<< orphan*/  state_lock; struct inode* inode; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_stateid; struct nfs4_state* ls_state; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_open_context*) ; 
 struct nfs4_unlockdata* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_unlockdata *FUNC10(struct file_lock *fl,
		struct nfs_open_context *ctx,
		struct nfs4_lock_state *lsp,
		struct nfs_seqid *seqid)
{
	struct nfs4_unlockdata *p;
	struct nfs4_state *state = lsp->ls_state;
	struct inode *inode = state->inode;

	p = FUNC3(sizeof(*p), GFP_NOFS);
	if (p == NULL)
		return NULL;
	p->arg.fh = FUNC0(inode);
	p->arg.fl = &p->fl;
	p->arg.seqid = seqid;
	p->res.seqid = seqid;
	p->lsp = lsp;
	/* Ensure we don't close file until we're done freeing locks! */
	p->ctx = FUNC2(ctx);
	p->l_ctx = FUNC7(ctx);
	FUNC5(&p->fl);
	FUNC4(&p->fl, fl);
	p->server = FUNC1(inode);
	FUNC8(&state->state_lock);
	FUNC6(&p->arg.stateid, &lsp->ls_stateid);
	FUNC9(&state->state_lock);
	return p;
}