#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {int dummy; } ;
struct blk_plug {int dummy; } ;
struct TYPE_3__ {struct buffer_head** j_chkpt_bhs; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(journal_t *journal, int *batch_count)
{
	int i;
	struct blk_plug plug;

	FUNC3(&plug);
	for (i = 0; i < *batch_count; i++)
		FUNC4(journal->j_chkpt_bhs[i], REQ_SYNC);
	FUNC2(&plug);

	for (i = 0; i < *batch_count; i++) {
		struct buffer_head *bh = journal->j_chkpt_bhs[i];
		FUNC0(bh, "brelse");
		FUNC1(bh);
	}
	*batch_count = 0;
}