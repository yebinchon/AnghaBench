#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct buffer_head {TYPE_2__* b_bdev; scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_10__ {int h_err; TYPE_1__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;
struct TYPE_9__ {struct super_block* bd_super; } ;
struct TYPE_8__ {int /*<<< orphan*/ * t_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long) ; 

void FUNC8(handle_t *handle, struct buffer_head *bh)
{
	int status;

	FUNC7((unsigned long long)bh->b_blocknr);

	status = FUNC3(handle, bh);
	if (status) {
		FUNC5(status);
		if (!FUNC0(handle)) {
			journal_t *journal = handle->h_transaction->t_journal;
			struct super_block *sb = bh->b_bdev->bd_super;

			FUNC4(ML_ERROR, "jbd2_journal_dirty_metadata failed. "
					"Aborting transaction and journal.\n");
			handle->h_err = status;
			FUNC2(handle);
			FUNC1(journal, status);
			FUNC6(sb, "Journal already aborted.\n");
		}
	}
}