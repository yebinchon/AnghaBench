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
struct xfs_mount {int m_flags; } ;
struct xfs_cil_ctx {int /*<<< orphan*/  busy_extents; int /*<<< orphan*/  lv_chain; TYPE_2__* cil; int /*<<< orphan*/  committing; int /*<<< orphan*/  start_lsn; } ;
struct TYPE_4__ {int /*<<< orphan*/  xc_push_lock; TYPE_1__* xc_log; int /*<<< orphan*/  xc_commit_wait; } ;
struct TYPE_3__ {int /*<<< orphan*/  l_ailp; struct xfs_mount* l_mp; } ;

/* Variables and functions */
 int XFS_MOUNT_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_cil_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*,struct xfs_cil_ctx*) ; 

__attribute__((used)) static void
FUNC11(
	struct xfs_cil_ctx	*ctx,
	bool			abort)
{
	struct xfs_mount	*mp = ctx->cil->xc_log->l_mp;

	/*
	 * If the I/O failed, we're aborting the commit and already shutdown.
	 * Wake any commit waiters before aborting the log items so we don't
	 * block async log pushers on callbacks. Async log pushers explicitly do
	 * not wait on log force completion because they may be holding locks
	 * required to unpin items.
	 */
	if (abort) {
		FUNC3(&ctx->cil->xc_push_lock);
		FUNC5(&ctx->cil->xc_commit_wait);
		FUNC4(&ctx->cil->xc_push_lock);
	}

	FUNC8(ctx->cil->xc_log->l_ailp, ctx->lv_chain,
					ctx->start_lsn, abort);

	FUNC7(&ctx->busy_extents);
	FUNC6(mp, &ctx->busy_extents,
			     (mp->m_flags & XFS_MOUNT_DISCARD) && !abort);

	FUNC3(&ctx->cil->xc_push_lock);
	FUNC1(&ctx->committing);
	FUNC4(&ctx->cil->xc_push_lock);

	FUNC9(ctx->lv_chain);

	if (!FUNC2(&ctx->busy_extents))
		FUNC10(mp, ctx);
	else
		FUNC0(ctx);
}