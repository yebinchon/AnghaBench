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
struct journal_head {int /*<<< orphan*/ * b_cp_transaction; int /*<<< orphan*/ * b_transaction; int /*<<< orphan*/ * b_next_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_list_lock; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*) ; 
 struct journal_head* FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(journal_t *journal, struct buffer_head *bh)
{
	struct journal_head *jh;

	jh = FUNC2(bh);

	if (FUNC4(bh) || FUNC3(bh))
		goto out;

	if (jh->b_next_transaction != NULL || jh->b_transaction != NULL)
		goto out;

	FUNC5(&journal->j_list_lock);
	if (jh->b_cp_transaction != NULL) {
		/* written-back checkpointed metadata buffer */
		FUNC0(jh, "remove from checkpoint list");
		FUNC1(jh);
	}
	FUNC6(&journal->j_list_lock);
out:
	return;
}