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
struct xlog {struct xfs_cil* l_cilp; } ;
struct xfs_cil_ctx {int sequence; struct xfs_cil* cil; int /*<<< orphan*/  busy_extents; int /*<<< orphan*/  committing; } ;
struct xfs_cil {int xc_current_sequence; struct xlog* xc_log; struct xfs_cil_ctx* xc_ctx; int /*<<< orphan*/  xc_commit_wait; int /*<<< orphan*/  xc_ctx_lock; int /*<<< orphan*/  xc_push_lock; int /*<<< orphan*/  xc_cil_lock; int /*<<< orphan*/  xc_committing; int /*<<< orphan*/  xc_cil; int /*<<< orphan*/  xc_push_work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_cil*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xlog_cil_push_work ; 

int
FUNC7(
	struct xlog	*log)
{
	struct xfs_cil	*cil;
	struct xfs_cil_ctx *ctx;

	cil = FUNC5(sizeof(*cil), KM_MAYFAIL);
	if (!cil)
		return -ENOMEM;

	ctx = FUNC5(sizeof(*ctx), KM_MAYFAIL);
	if (!ctx) {
		FUNC4(cil);
		return -ENOMEM;
	}

	FUNC1(&cil->xc_push_work, xlog_cil_push_work);
	FUNC0(&cil->xc_cil);
	FUNC0(&cil->xc_committing);
	FUNC6(&cil->xc_cil_lock);
	FUNC6(&cil->xc_push_lock);
	FUNC2(&cil->xc_ctx_lock);
	FUNC3(&cil->xc_commit_wait);

	FUNC0(&ctx->committing);
	FUNC0(&ctx->busy_extents);
	ctx->sequence = 1;
	ctx->cil = cil;
	cil->xc_ctx = ctx;
	cil->xc_current_sequence = ctx->sequence;

	cil->xc_log = log;
	log->l_cilp = cil;
	return 0;
}