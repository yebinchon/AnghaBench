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
struct the_nilfs {int /*<<< orphan*/  ns_segctor_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int ti_flags; struct nilfs_transaction_info* ti_save; int /*<<< orphan*/  ti_count; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;

/* Variables and functions */
 int ENOSPC ; 
 int NILFS_TI_DYNAMIC_ALLOC ; 
 int /*<<< orphan*/  TRACE_NILFS2_TRANSACTION_BEGIN ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nilfs_transaction_info*) ; 
 scalar_t__ FUNC2 (struct the_nilfs*) ; 
 int FUNC3 (struct super_block*,struct nilfs_transaction_info*) ; 
 int /*<<< orphan*/  nilfs_transaction_cachep ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct super_block *sb,
			    struct nilfs_transaction_info *ti,
			    int vacancy_check)
{
	struct the_nilfs *nilfs;
	int ret = FUNC3(sb, ti);
	struct nilfs_transaction_info *trace_ti;

	if (FUNC7(ret < 0))
		return ret;
	if (ret > 0) {
		trace_ti = current->journal_info;

		FUNC6(sb, trace_ti,
				    trace_ti->ti_count, trace_ti->ti_flags,
				    TRACE_NILFS2_TRANSACTION_BEGIN);
		return 0;
	}

	FUNC5(sb);

	nilfs = sb->s_fs_info;
	FUNC0(&nilfs->ns_segctor_sem);
	if (vacancy_check && FUNC2(nilfs)) {
		FUNC8(&nilfs->ns_segctor_sem);
		ret = -ENOSPC;
		goto failed;
	}

	trace_ti = current->journal_info;
	FUNC6(sb, trace_ti, trace_ti->ti_count,
					    trace_ti->ti_flags,
					    TRACE_NILFS2_TRANSACTION_BEGIN);
	return 0;

 failed:
	ti = current->journal_info;
	current->journal_info = ti->ti_save;
	if (ti->ti_flags & NILFS_TI_DYNAMIC_ALLOC)
		FUNC1(nilfs_transaction_cachep, ti);
	FUNC4(sb);
	return ret;
}