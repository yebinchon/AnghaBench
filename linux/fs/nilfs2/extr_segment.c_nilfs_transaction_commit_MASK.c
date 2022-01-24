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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; int /*<<< orphan*/  ns_ndirtyblks; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {scalar_t__ ti_magic; int ti_flags; scalar_t__ ti_count; struct nilfs_transaction_info* ti_save; } ;
struct nilfs_sc_info {scalar_t__ sc_watermark; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NILFS_TI_COMMIT ; 
 int NILFS_TI_DYNAMIC_ALLOC ; 
 scalar_t__ NILFS_TI_MAGIC ; 
 int NILFS_TI_SYNC ; 
 int /*<<< orphan*/  TRACE_NILFS2_TRANSACTION_COMMIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nilfs_transaction_info*) ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  nilfs_transaction_cachep ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct nilfs_transaction_info*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct super_block *sb)
{
	struct nilfs_transaction_info *ti = current->journal_info;
	struct the_nilfs *nilfs = sb->s_fs_info;
	int err = 0;

	FUNC0(ti == NULL || ti->ti_magic != NILFS_TI_MAGIC);
	ti->ti_flags |= NILFS_TI_COMMIT;
	if (ti->ti_count > 0) {
		ti->ti_count--;
		FUNC7(sb, ti, ti->ti_count,
			    ti->ti_flags, TRACE_NILFS2_TRANSACTION_COMMIT);
		return 0;
	}
	if (nilfs->ns_writer) {
		struct nilfs_sc_info *sci = nilfs->ns_writer;

		if (ti->ti_flags & NILFS_TI_COMMIT)
			FUNC5(sci);
		if (FUNC1(&nilfs->ns_ndirtyblks) > sci->sc_watermark)
			FUNC4(sci, 0);
	}
	FUNC8(&nilfs->ns_segctor_sem);
	FUNC7(sb, ti, ti->ti_count,
			    ti->ti_flags, TRACE_NILFS2_TRANSACTION_COMMIT);

	current->journal_info = ti->ti_save;

	if (ti->ti_flags & NILFS_TI_SYNC)
		err = FUNC3(sb);
	if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
		FUNC2(nilfs_transaction_cachep, ti);
	FUNC6(sb);
	return err;
}