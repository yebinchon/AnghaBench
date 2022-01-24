#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_id; int /*<<< orphan*/  s_flags; } ;
struct TYPE_4__ {int j_flags; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_5__ {TYPE_1__* s_journal; int /*<<< orphan*/  s_mount_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 int /*<<< orphan*/  EXT4_MF_FS_ABORTED ; 
 TYPE_3__* FUNC0 (struct super_block*) ; 
 int JBD2_REC_ERR ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 int /*<<< orphan*/  WARN_ON_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *sb)
{
	if (FUNC8(sb, WARN_ON_ERROR))
		FUNC1(1);

	if (FUNC5(sb))
		return;

	if (!FUNC8(sb, ERRORS_CONT)) {
		journal_t *journal = FUNC0(sb)->s_journal;

		FUNC0(sb)->s_mount_flags |= EXT4_MF_FS_ABORTED;
		if (journal)
			FUNC3(journal, -EIO);
	}
	/*
	 * We force ERRORS_RO behavior when system is rebooting. Otherwise we
	 * could panic during 'reboot -f' as the underlying device got already
	 * disabled.
	 */
	if (FUNC8(sb, ERRORS_RO) || FUNC7()) {
		FUNC2(sb, KERN_CRIT, "Remounting filesystem read-only");
		/*
		 * Make sure updated value of ->s_mount_flags will be visible
		 * before ->s_flags update
		 */
		FUNC6();
		sb->s_flags |= SB_RDONLY;
	} else if (FUNC8(sb, ERRORS_PANIC)) {
		if (FUNC0(sb)->s_journal &&
		  !(FUNC0(sb)->s_journal->j_flags & JBD2_REC_ERR))
			return;
		FUNC4("EXT4-fs (device %s): panic forced after error\n",
			sb->s_id);
	}
}