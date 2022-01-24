#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct ext4_super_block {int /*<<< orphan*/  s_journal_dev; int /*<<< orphan*/  s_journal_inum; } ;
struct TYPE_8__ {int j_flags; } ;
typedef  TYPE_1__ journal_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_9__ {TYPE_1__* s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EROFS ; 
 TYPE_7__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_S_ERR_LEN ; 
 int EXT4_S_ERR_START ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JBD2_BARRIER ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int) ; 
 TYPE_1__* FUNC6 (struct super_block*,scalar_t__) ; 
 TYPE_1__* FUNC7 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 scalar_t__ FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (unsigned long) ; 
 scalar_t__ FUNC19 (struct super_block*) ; 

__attribute__((used)) static int FUNC20(struct super_block *sb,
			     struct ext4_super_block *es,
			     unsigned long journal_devnum)
{
	journal_t *journal;
	unsigned int journal_inum = FUNC16(es->s_journal_inum);
	dev_t journal_dev;
	int err = 0;
	int really_read_only;

	FUNC0(!FUNC8(sb));

	if (journal_devnum &&
	    journal_devnum != FUNC16(es->s_journal_dev)) {
		FUNC10(sb, KERN_INFO, "external journal device major/minor "
			"numbers have changed");
		journal_dev = FUNC18(journal_devnum);
	} else
		journal_dev = FUNC18(FUNC16(es->s_journal_dev));

	really_read_only = FUNC2(sb->s_bdev);

	/*
	 * Are we loading a blank journal or performing recovery after a
	 * crash?  For recovery, we need to check in advance whether we
	 * can get read-write access to the device.
	 */
	if (FUNC9(sb)) {
		if (FUNC19(sb)) {
			FUNC10(sb, KERN_INFO, "INFO: recovery "
					"required on readonly filesystem");
			if (really_read_only) {
				FUNC10(sb, KERN_ERR, "write access "
					"unavailable, cannot proceed "
					"(try mounting with noload)");
				return -EROFS;
			}
			FUNC10(sb, KERN_INFO, "write access will "
			       "be enabled during recovery");
		}
	}

	if (journal_inum && journal_dev) {
		FUNC10(sb, KERN_ERR, "filesystem has both journal "
		       "and inode journals!");
		return -EINVAL;
	}

	if (journal_inum) {
		if (!(journal = FUNC7(sb, journal_inum)))
			return -EINVAL;
	} else {
		if (!(journal = FUNC6(sb, journal_dev)))
			return -EINVAL;
	}

	if (!(journal->j_flags & JBD2_BARRIER))
		FUNC10(sb, KERN_INFO, "barriers disabled");

	if (!FUNC9(sb))
		err = FUNC13(journal, !really_read_only);
	if (!err) {
		char *save = FUNC15(EXT4_S_ERR_LEN, GFP_KERNEL);
		if (save)
			FUNC17(save, ((char *) es) +
			       EXT4_S_ERR_START, EXT4_S_ERR_LEN);
		err = FUNC12(journal);
		if (save)
			FUNC17(((char *) es) + EXT4_S_ERR_START,
			       save, EXT4_S_ERR_LEN);
		FUNC14(save);
	}

	if (err) {
		FUNC10(sb, KERN_ERR, "error loading journal");
		FUNC11(journal);
		return err;
	}

	FUNC1(sb)->s_journal = journal;
	FUNC4(sb, es);

	if (!really_read_only && journal_devnum &&
	    journal_devnum != FUNC16(es->s_journal_dev)) {
		es->s_journal_dev = FUNC3(journal_devnum);

		/* Make sure we flush the recovery flag to disk. */
		FUNC5(sb, 1);
	}

	return 0;
}