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
struct mm_struct {int /*<<< orphan*/  ioctx_table; int /*<<< orphan*/  ioctx_lock; } ;
struct kioctx_table {unsigned int nr; unsigned int id; int /*<<< orphan*/ * table; int /*<<< orphan*/ * ring_pages; } ;
struct kioctx {unsigned int nr; unsigned int id; int /*<<< orphan*/ * table; int /*<<< orphan*/ * ring_pages; } ;
struct aio_ring {unsigned int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kioctx_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct kioctx_table*,int /*<<< orphan*/ ) ; 
 struct aio_ring* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aio_ring*) ; 
 struct kioctx_table* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct kioctx_table*) ; 
 struct kioctx_table* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct kioctx *ctx, struct mm_struct *mm)
{
	unsigned i, new_nr;
	struct kioctx_table *table, *old;
	struct aio_ring *ring;

	FUNC9(&mm->ioctx_lock);
	table = FUNC8(mm->ioctx_table);

	while (1) {
		if (table)
			for (i = 0; i < table->nr; i++)
				if (!FUNC6(table->table[i])) {
					ctx->id = i;
					FUNC7(table->table[i], ctx);
					FUNC10(&mm->ioctx_lock);

					/* While kioctx setup is in progress,
					 * we are protected from page migration
					 * changes ring_pages by ->ring_lock.
					 */
					ring = FUNC2(ctx->ring_pages[0]);
					ring->id = ctx->id;
					FUNC3(ring);
					return 0;
				}

		new_nr = (table ? table->nr : 1) * 4;
		FUNC10(&mm->ioctx_lock);

		table = FUNC4(sizeof(*table) + sizeof(struct kioctx *) *
				new_nr, GFP_KERNEL);
		if (!table)
			return -ENOMEM;

		table->nr = new_nr;

		FUNC9(&mm->ioctx_lock);
		old = FUNC8(mm->ioctx_table);

		if (!old) {
			FUNC7(mm->ioctx_table, table);
		} else if (table->nr > old->nr) {
			FUNC5(table->table, old->table,
			       old->nr * sizeof(struct kioctx *));

			FUNC7(mm->ioctx_table, table);
			FUNC1(old, rcu);
		} else {
			FUNC0(table);
			table = old;
		}
	}
}