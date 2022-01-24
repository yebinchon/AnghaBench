#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_5__ {unsigned long j_tail; unsigned long j_free; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_tail_sequence; scalar_t__ j_first; scalar_t__ j_last; int /*<<< orphan*/  j_checkpoint_mutex; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REQ_FUA ; 
 int REQ_SYNC ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(journal_t *journal, tid_t tid, unsigned long block)
{
	unsigned long freed;
	int ret;

	FUNC0(!FUNC3(&journal->j_checkpoint_mutex));

	/*
	 * We cannot afford for write to remain in drive's caches since as
	 * soon as we update j_tail, next transaction can start reusing journal
	 * space and if we lose sb update during power failure we'd replay
	 * old transaction with possibly newly overwritten data.
	 */
	ret = FUNC1(journal, tid, block,
					      REQ_SYNC | REQ_FUA);
	if (ret)
		goto out;

	FUNC5(&journal->j_state_lock);
	freed = block - journal->j_tail;
	if (block < journal->j_tail)
		freed += journal->j_last - journal->j_first;

	FUNC4(journal, tid, block, freed);
	FUNC2(1,
		  "Cleaning journal tail from %u to %u (offset %lu), "
		  "freeing %lu\n",
		  journal->j_tail_sequence, tid, block, freed);

	journal->j_free += freed;
	journal->j_tail_sequence = tid;
	journal->j_tail = block;
	FUNC6(&journal->j_state_lock);

out:
	return ret;
}