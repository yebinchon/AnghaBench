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
struct mm_struct {int /*<<< orphan*/  ioctx_lock; int /*<<< orphan*/  ioctx_table; } ;
struct kioctx_table {int /*<<< orphan*/ * table; } ;
struct kioctx {size_t id; int /*<<< orphan*/  users; struct ctx_rq_wait* rq_wait; scalar_t__ mmap_size; int /*<<< orphan*/  mmap_base; int /*<<< orphan*/  max_reqs; int /*<<< orphan*/  wait; int /*<<< orphan*/  dead; } ;
struct ctx_rq_wait {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct kioctx* FUNC5 (int /*<<< orphan*/ ) ; 
 struct kioctx_table* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mm_struct *mm, struct kioctx *ctx,
		      struct ctx_rq_wait *wait)
{
	struct kioctx_table *table;

	FUNC7(&mm->ioctx_lock);
	if (FUNC3(&ctx->dead, 1)) {
		FUNC8(&mm->ioctx_lock);
		return -EINVAL;
	}

	table = FUNC6(mm->ioctx_table);
	FUNC1(ctx != FUNC5(table->table[ctx->id]));
	FUNC0(table->table[ctx->id], NULL);
	FUNC8(&mm->ioctx_lock);

	/* free_ioctx_reqs() will do the necessary RCU synchronization */
	FUNC10(&ctx->wait);

	/*
	 * It'd be more correct to do this in free_ioctx(), after all
	 * the outstanding kiocbs have finished - but by then io_destroy
	 * has already returned, so io_setup() could potentially return
	 * -EAGAIN with no ioctxs actually in use (as far as userspace
	 *  could tell).
	 */
	FUNC2(ctx->max_reqs);

	if (ctx->mmap_size)
		FUNC9(ctx->mmap_base, ctx->mmap_size);

	ctx->rq_wait = wait;
	FUNC4(&ctx->users);
	return 0;
}