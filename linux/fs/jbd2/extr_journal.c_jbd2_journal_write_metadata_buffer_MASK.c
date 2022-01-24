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
struct TYPE_5__ {TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct page {int dummy; } ;
struct journal_head {char* b_frozen_data; int /*<<< orphan*/  b_triggers; int /*<<< orphan*/  b_frozen_triggers; } ;
struct buffer_head {char* b_data; struct buffer_head* b_private; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_size; struct page* b_page; int /*<<< orphan*/  b_count; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_6__ {int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/  j_dev; } ;
typedef  TYPE_2__ journal_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BJ_Shadow ; 
 int ENOMEM ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  JBD2_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct journal_head*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct journal_head*) ; 
 char* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*,struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 struct page* FUNC24 (char*) ; 

int FUNC25(transaction_t *transaction,
				  struct journal_head  *jh_in,
				  struct buffer_head **bh_out,
				  sector_t blocknr)
{
	int need_copy_out = 0;
	int done_copy_out = 0;
	int do_escape = 0;
	char *mapped_data;
	struct buffer_head *new_bh;
	struct page *new_page;
	unsigned int new_offset;
	struct buffer_head *bh_in = FUNC13(jh_in);
	journal_t *journal = transaction->t_journal;

	/*
	 * The buffer really shouldn't be locked: only the current committing
	 * transaction is allowed to write it, so nobody else is allowed
	 * to do any IO.
	 *
	 * akpm: except if we're journalling data, and write() output is
	 * also part of a shared mapping, and another thread has
	 * decided to launch a writepage() against this buffer.
	 */
	FUNC1(bh_in, FUNC6(bh_in));

	new_bh = FUNC3(GFP_NOFS|__GFP_NOFAIL);

	/* keep subsequent assertions sane */
	FUNC4(&new_bh->b_count, 1);

	FUNC11(bh_in);
repeat:
	/*
	 * If a new transaction has already done a buffer copy-out, then
	 * we use that version of the data for the commit.
	 */
	if (jh_in->b_frozen_data) {
		done_copy_out = 1;
		new_page = FUNC24(jh_in->b_frozen_data);
		new_offset = FUNC17(jh_in->b_frozen_data);
	} else {
		new_page = FUNC13(jh_in)->b_page;
		new_offset = FUNC17(FUNC13(jh_in)->b_data);
	}

	mapped_data = FUNC14(new_page);
	/*
	 * Fire data frozen trigger if data already wasn't frozen.  Do this
	 * before checking for escaping, as the trigger may modify the magic
	 * offset.  If a copy-out happens afterwards, it will have the correct
	 * data in the buffer.
	 */
	if (!done_copy_out)
		FUNC9(jh_in, mapped_data + new_offset,
					   jh_in->b_triggers);

	/*
	 * Check for escaping
	 */
	if (*((__be32 *)(mapped_data + new_offset)) ==
				FUNC7(JBD2_MAGIC_NUMBER)) {
		need_copy_out = 1;
		do_escape = 1;
	}
	FUNC15(mapped_data);

	/*
	 * Do we need to do a data copy?
	 */
	if (need_copy_out && !done_copy_out) {
		char *tmp;

		FUNC12(bh_in);
		tmp = FUNC8(bh_in->b_size, GFP_NOFS);
		if (!tmp) {
			FUNC5(new_bh);
			return -ENOMEM;
		}
		FUNC11(bh_in);
		if (jh_in->b_frozen_data) {
			FUNC10(tmp, bh_in->b_size);
			goto repeat;
		}

		jh_in->b_frozen_data = tmp;
		mapped_data = FUNC14(new_page);
		FUNC16(tmp, mapped_data + new_offset, bh_in->b_size);
		FUNC15(mapped_data);

		new_page = FUNC24(tmp);
		new_offset = FUNC17(tmp);
		done_copy_out = 1;

		/*
		 * This isn't strictly necessary, as we're using frozen
		 * data for the escaping, but it keeps consistency with
		 * b_frozen_data usage.
		 */
		jh_in->b_frozen_triggers = jh_in->b_triggers;
	}

	/*
	 * Did we need to do an escaping?  Now we've done all the
	 * copying, we can finally do so.
	 */
	if (do_escape) {
		mapped_data = FUNC14(new_page);
		*((unsigned int *)(mapped_data + new_offset)) = 0;
		FUNC15(mapped_data);
	}

	FUNC18(new_bh, new_page, new_offset);
	new_bh->b_size = bh_in->b_size;
	new_bh->b_bdev = journal->j_dev;
	new_bh->b_blocknr = blocknr;
	new_bh->b_private = bh_in;
	FUNC20(new_bh);
	FUNC19(new_bh);

	*bh_out = new_bh;

	/*
	 * The to-be-written buffer needs to get moved to the io queue,
	 * and the original buffer whose contents we are shadowing or
	 * copying is moved to the transaction's shadow queue.
	 */
	FUNC0(jh_in, "file as BJ_Shadow");
	FUNC22(&journal->j_list_lock);
	FUNC2(jh_in, transaction, BJ_Shadow);
	FUNC23(&journal->j_list_lock);
	FUNC21(bh_in);
	FUNC12(bh_in);

	return do_escape | (done_copy_out << 1);
}