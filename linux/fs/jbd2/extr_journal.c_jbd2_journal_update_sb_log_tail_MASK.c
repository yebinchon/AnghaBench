#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long tid_t ;
struct TYPE_6__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_flags; int /*<<< orphan*/  j_sb_buffer; int /*<<< orphan*/  j_checkpoint_mutex; TYPE_2__* j_superblock; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_7__ {void* s_sequence; void* s_start; } ;
typedef  TYPE_2__ journal_superblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  JBD2_FLUSHED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(journal_t *journal, tid_t tail_tid,
				     unsigned long tail_block, int write_op)
{
	journal_superblock_t *sb = journal->j_superblock;
	int ret;

	if (FUNC3(journal))
		return -EIO;

	FUNC0(!FUNC7(&journal->j_checkpoint_mutex));
	FUNC5(1, "JBD2: updating superblock (start %lu, seq %u)\n",
		  tail_block, tail_tid);

	FUNC6(journal->j_sb_buffer);
	sb->s_sequence = FUNC2(tail_tid);
	sb->s_start    = FUNC2(tail_block);

	ret = FUNC4(journal, write_op);
	if (ret)
		goto out;

	/* Log is no longer empty */
	FUNC8(&journal->j_state_lock);
	FUNC1(!sb->s_sequence);
	journal->j_flags &= ~JBD2_FLUSHED;
	FUNC9(&journal->j_state_lock);

out:
	return ret;
}