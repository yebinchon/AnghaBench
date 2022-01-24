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
struct TYPE_2__ {struct nfs_open_context* open_context; } ;
struct nfs_open_context {int /*<<< orphan*/ * mdsthreshold; int /*<<< orphan*/  list; TYPE_1__ lock_context; scalar_t__ flock_owner; scalar_t__ error; scalar_t__ flags; int /*<<< orphan*/  mode; int /*<<< orphan*/ * state; int /*<<< orphan*/ * ll_cred; struct cred const* cred; int /*<<< orphan*/  dentry; } ;
struct file {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;
typedef  scalar_t__ fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs_open_context* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct cred* FUNC3 () ; 
 struct nfs_open_context* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 

struct nfs_open_context *FUNC8(struct dentry *dentry,
						fmode_t f_mode,
						struct file *filp)
{
	struct nfs_open_context *ctx;
	const struct cred *cred = FUNC3();

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		FUNC7(cred);
		return FUNC0(-ENOMEM);
	}
	FUNC6(dentry->d_sb);
	ctx->dentry = FUNC2(dentry);
	ctx->cred = cred;
	ctx->ll_cred = NULL;
	ctx->state = NULL;
	ctx->mode = f_mode;
	ctx->flags = 0;
	ctx->error = 0;
	ctx->flock_owner = (fl_owner_t)filp;
	FUNC5(&ctx->lock_context);
	ctx->lock_context.open_context = ctx;
	FUNC1(&ctx->list);
	ctx->mdsthreshold = NULL;
	return ctx;
}