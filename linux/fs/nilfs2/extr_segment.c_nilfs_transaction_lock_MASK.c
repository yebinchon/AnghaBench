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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int /*<<< orphan*/  ti_flags; scalar_t__ ti_count; int /*<<< orphan*/  ti_magic; struct nilfs_transaction_info* ti_save; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_PRIOR_FLUSH ; 
 int /*<<< orphan*/  NILFS_TI_GC ; 
 int /*<<< orphan*/  NILFS_TI_MAGIC ; 
 int /*<<< orphan*/  NILFS_TI_WRITER ; 
 int /*<<< orphan*/  TRACE_NILFS2_TRANSACTION_LOCK ; 
 int /*<<< orphan*/  TRACE_NILFS2_TRANSACTION_TRYLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_transaction_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct nilfs_transaction_info*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb,
				   struct nilfs_transaction_info *ti,
				   int gcflag)
{
	struct nilfs_transaction_info *cur_ti = current->journal_info;
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_sc_info *sci = nilfs->ns_writer;

	FUNC0(cur_ti);
	ti->ti_flags = NILFS_TI_WRITER;
	ti->ti_count = 0;
	ti->ti_save = cur_ti;
	ti->ti_magic = NILFS_TI_MAGIC;
	current->journal_info = ti;

	for (;;) {
		FUNC5(sb, ti, ti->ti_count,
			    ti->ti_flags, TRACE_NILFS2_TRANSACTION_TRYLOCK);

		FUNC2(&nilfs->ns_segctor_sem);
		if (!FUNC4(NILFS_SC_PRIOR_FLUSH, &sci->sc_flags))
			break;

		FUNC3(sci);

		FUNC6(&nilfs->ns_segctor_sem);
		FUNC1();
	}
	if (gcflag)
		ti->ti_flags |= NILFS_TI_GC;

	FUNC5(sb, ti, ti->ti_count,
			    ti->ti_flags, TRACE_NILFS2_TRANSACTION_LOCK);
}