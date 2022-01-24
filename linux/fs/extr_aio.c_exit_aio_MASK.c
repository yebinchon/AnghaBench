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
struct mm_struct {int /*<<< orphan*/  ioctx_table; } ;
struct kioctx_table {int nr; int /*<<< orphan*/ * table; } ;
struct kioctx {scalar_t__ mmap_size; } ;
struct ctx_rq_wait {int /*<<< orphan*/  comp; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kioctx_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,struct kioctx*,struct ctx_rq_wait*) ; 
 struct kioctx* FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct kioctx_table* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mm_struct *mm)
{
	struct kioctx_table *table = FUNC7(mm->ioctx_table);
	struct ctx_rq_wait wait;
	int i, skipped;

	if (!table)
		return;

	FUNC1(&wait.count, table->nr);
	FUNC3(&wait.comp);

	skipped = 0;
	for (i = 0; i < table->nr; ++i) {
		struct kioctx *ctx =
			FUNC6(table->table[i], true);

		if (!ctx) {
			skipped++;
			continue;
		}

		/*
		 * We don't need to bother with munmap() here - exit_mmap(mm)
		 * is coming and it'll unmap everything. And we simply can't,
		 * this is not necessarily our ->mm.
		 * Since kill_ioctx() uses non-zero ->mmap_size as indicator
		 * that it needs to unmap the area, just set it to 0.
		 */
		ctx->mmap_size = 0;
		FUNC5(mm, ctx, &wait);
	}

	if (!FUNC2(skipped, &wait.count)) {
		/* Wait until all IO for the context are done. */
		FUNC8(&wait.comp);
	}

	FUNC0(mm->ioctx_table, NULL);
	FUNC4(table);
}