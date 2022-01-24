#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ frozen; } ;
struct super_block {TYPE_1__ s_writers; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_5__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int EIO ; 
 int EROFS ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 scalar_t__ SB_FREEZE_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb)
{
	journal_t *journal;

	FUNC5();

	if (FUNC7(FUNC3(FUNC0(sb))))
		return -EIO;

	if (FUNC6(sb))
		return -EROFS;
	FUNC1(sb->s_writers.frozen == SB_FREEZE_COMPLETE);
	journal = FUNC0(sb)->s_journal;
	/*
	 * Special case here: if the journal has aborted behind our
	 * backs (eg. EIO in the commit thread), then we still need to
	 * take the FS itself readonly cleanly.
	 */
	if (journal && FUNC4(journal)) {
		FUNC2(sb, "Detected aborted journal");
		return -EROFS;
	}
	return 0;
}