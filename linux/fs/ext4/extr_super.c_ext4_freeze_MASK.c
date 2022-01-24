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
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb)
{
	int error = 0;
	journal_t *journal;

	if (FUNC6(sb))
		return 0;

	journal = FUNC0(sb)->s_journal;

	if (journal) {
		/* Now we set up the journal barrier. */
		FUNC4(journal);

		/*
		 * Don't clear the needs_recovery flag if we failed to
		 * flush the journal.
		 */
		error = FUNC3(journal);
		if (error < 0)
			goto out;

		/* Journal blocked and flushed, clear needs_recovery flag. */
		FUNC1(sb);
	}

	error = FUNC2(sb, 1);
out:
	if (journal)
		/* we rely on upper layer to stop further updates */
		FUNC5(journal);
	return error;
}