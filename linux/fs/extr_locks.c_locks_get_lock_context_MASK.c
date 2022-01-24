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
struct inode {int /*<<< orphan*/  i_flctx; } ;
struct file_lock_context {int /*<<< orphan*/  flc_lease; int /*<<< orphan*/  flc_posix; int /*<<< orphan*/  flc_flock; int /*<<< orphan*/  flc_lock; } ;

/* Variables and functions */
 int F_UNLCK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct file_lock_context*) ; 
 int /*<<< orphan*/  flctx_cache ; 
 struct file_lock_context* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct file_lock_context*) ; 
 scalar_t__ FUNC4 (struct file_lock_context*) ; 
 struct file_lock_context* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,struct file_lock_context*) ; 

__attribute__((used)) static struct file_lock_context *
FUNC8(struct inode *inode, int type)
{
	struct file_lock_context *ctx;

	/* paired with cmpxchg() below */
	ctx = FUNC5(&inode->i_flctx);
	if (FUNC4(ctx) || type == F_UNLCK)
		goto out;

	ctx = FUNC2(flctx_cache, GFP_KERNEL);
	if (!ctx)
		goto out;

	FUNC6(&ctx->flc_lock);
	FUNC0(&ctx->flc_flock);
	FUNC0(&ctx->flc_posix);
	FUNC0(&ctx->flc_lease);

	/*
	 * Assign the pointer if it's not already assigned. If it is, then
	 * free the context we just allocated.
	 */
	if (FUNC1(&inode->i_flctx, NULL, ctx)) {
		FUNC3(flctx_cache, ctx);
		ctx = FUNC5(&inode->i_flctx);
	}
out:
	FUNC7(inode, type, ctx);
	return ctx;
}