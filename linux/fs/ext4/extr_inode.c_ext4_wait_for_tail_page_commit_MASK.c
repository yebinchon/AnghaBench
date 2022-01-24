#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tid_t ;
struct page {int dummy; } ;
struct inode {int i_size; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  j_state_lock; TYPE_1__* j_committing_transaction; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_7__ {TYPE_2__* s_journal; } ;
struct TYPE_5__ {scalar_t__ t_tid; } ;

/* Variables and functions */
 int EBUSY ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page*,unsigned int,int) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static void FUNC9(struct inode *inode)
{
	struct page *page;
	unsigned offset;
	journal_t *journal = FUNC0(inode->i_sb)->s_journal;
	tid_t commit_tid = 0;
	int ret;

	offset = inode->i_size & (PAGE_SIZE - 1);
	/*
	 * All buffers in the last page remain valid? Then there's nothing to
	 * do. We do the check mainly to optimize the common PAGE_SIZE ==
	 * blocksize case
	 */
	if (offset > PAGE_SIZE - FUNC3(inode))
		return;
	while (1) {
		page = FUNC2(inode->i_mapping,
				      inode->i_size >> PAGE_SHIFT);
		if (!page)
			return;
		ret = FUNC1(page, offset,
						PAGE_SIZE - offset);
		FUNC8(page);
		FUNC5(page);
		if (ret != -EBUSY)
			return;
		commit_tid = 0;
		FUNC6(&journal->j_state_lock);
		if (journal->j_committing_transaction)
			commit_tid = journal->j_committing_transaction->t_tid;
		FUNC7(&journal->j_state_lock);
		if (commit_tid)
			FUNC4(journal, commit_tid);
	}
}