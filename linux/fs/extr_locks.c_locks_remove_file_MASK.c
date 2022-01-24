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
struct file_lock_context {int /*<<< orphan*/  flc_lock; int /*<<< orphan*/  flc_lease; int /*<<< orphan*/  flc_flock; int /*<<< orphan*/  flc_posix; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_flctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct file_lock_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct file_lock_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct file*) ; 
 struct file_lock_context* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct file *filp)
{
	struct file_lock_context *ctx;

	ctx = FUNC5(&FUNC1(filp)->i_flctx);
	if (!ctx)
		return;

	/* remove any OFD locks */
	FUNC4(filp, filp);

	/* remove flock locks */
	FUNC2(filp, ctx);

	/* remove any leases */
	FUNC3(filp, ctx);

	FUNC6(&ctx->flc_lock);
	FUNC0(filp, &ctx->flc_posix, "POSIX");
	FUNC0(filp, &ctx->flc_flock, "FLOCK");
	FUNC0(filp, &ctx->flc_lease, "LEASE");
	FUNC7(&ctx->flc_lock);
}