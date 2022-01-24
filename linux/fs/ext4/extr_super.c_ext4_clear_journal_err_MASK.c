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
struct ext4_super_block {int /*<<< orphan*/  s_state; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_mount_state; int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXT4_ERROR_FS ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 char* FUNC4 (struct super_block*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct super_block *sb,
				   struct ext4_super_block *es)
{
	journal_t *journal;
	int j_errno;
	const char *errstr;

	FUNC0(!FUNC5(sb));

	journal = FUNC1(sb)->s_journal;

	/*
	 * Now check for any error status which may have been recorded in the
	 * journal by a prior ext4_error() or ext4_abort()
	 */

	j_errno = FUNC8(journal);
	if (j_errno) {
		char nbuf[16];

		errstr = FUNC4(sb, j_errno, nbuf);
		FUNC6(sb, "Filesystem error recorded "
			     "from previous mount: %s", errstr);
		FUNC6(sb, "Marking fs in need of filesystem check.");

		FUNC1(sb)->s_mount_state |= EXT4_ERROR_FS;
		es->s_state |= FUNC2(EXT4_ERROR_FS);
		FUNC3(sb, 1);

		FUNC7(journal);
		FUNC9(journal);
	}
}