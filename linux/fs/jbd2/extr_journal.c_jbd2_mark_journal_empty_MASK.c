#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_flags; int /*<<< orphan*/  j_tail_sequence; int /*<<< orphan*/  j_sb_buffer; int /*<<< orphan*/  j_checkpoint_mutex; TYPE_2__* j_superblock; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_6__ {scalar_t__ s_start; void* s_sequence; } ;
typedef  TYPE_2__ journal_superblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  JBD2_FLUSHED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(journal_t *journal, int write_op)
{
	journal_superblock_t *sb = journal->j_superblock;

	FUNC0(!FUNC5(&journal->j_checkpoint_mutex));
	FUNC4(journal->j_sb_buffer);
	if (sb->s_start == 0) {		/* Is it already empty? */
		FUNC6(journal->j_sb_buffer);
		return;
	}

	FUNC3(1, "JBD2: Marking journal as empty (seq %u)\n",
		  journal->j_tail_sequence);

	sb->s_sequence = FUNC1(journal->j_tail_sequence);
	sb->s_start    = FUNC1(0);

	FUNC2(journal, write_op);

	/* Log is no longer empty */
	FUNC7(&journal->j_state_lock);
	journal->j_flags |= JBD2_FLUSHED;
	FUNC8(&journal->j_state_lock);
}