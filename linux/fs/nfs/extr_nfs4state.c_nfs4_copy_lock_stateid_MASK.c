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
struct nfs_lock_context {TYPE_1__* open_context; int /*<<< orphan*/  lockowner; } ;
struct nfs4_state {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_stateid; int /*<<< orphan*/  ls_flags; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {int /*<<< orphan*/  flock_owner; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  LK_STATE_IN_USE ; 
 int /*<<< orphan*/  NFS_LOCK_INITIALIZED ; 
 int /*<<< orphan*/  NFS_LOCK_LOST ; 
 struct nfs4_lock_state* FUNC0 (struct nfs4_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_lock_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(nfs4_stateid *dst,
		struct nfs4_state *state,
		const struct nfs_lock_context *l_ctx)
{
	struct nfs4_lock_state *lsp;
	fl_owner_t fl_owner, fl_flock_owner;
	int ret = -ENOENT;

	if (l_ctx == NULL)
		goto out;

	if (FUNC5(LK_STATE_IN_USE, &state->flags) == 0)
		goto out;

	fl_owner = l_ctx->lockowner;
	fl_flock_owner = l_ctx->open_context->flock_owner;

	FUNC3(&state->state_lock);
	lsp = FUNC0(state, fl_owner, fl_flock_owner);
	if (lsp && FUNC5(NFS_LOCK_LOST, &lsp->ls_flags))
		ret = -EIO;
	else if (lsp != NULL && FUNC5(NFS_LOCK_INITIALIZED, &lsp->ls_flags) != 0) {
		FUNC2(dst, &lsp->ls_stateid);
		ret = 0;
	}
	FUNC4(&state->state_lock);
	FUNC1(lsp);
out:
	return ret;
}