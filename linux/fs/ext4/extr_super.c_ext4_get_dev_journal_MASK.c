#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; int /*<<< orphan*/  s_bdev; } ;
struct ext4_super_block {scalar_t__ s_checksum; int /*<<< orphan*/  s_uuid; int /*<<< orphan*/  s_feature_ro_compat; int /*<<< orphan*/  s_feature_incompat; int /*<<< orphan*/  s_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct block_device {int dummy; } ;
struct TYPE_11__ {TYPE_2__* j_superblock; int /*<<< orphan*/  j_sb_buffer; struct super_block* j_private; } ;
typedef  TYPE_3__ journal_t ;
typedef  int ext4_fsblk_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_12__ {struct block_device* journal_bdev; TYPE_1__* s_es; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_nr_users; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_journal_uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXT4_FEATURE_INCOMPAT_JOURNAL_DEV ; 
 int EXT4_FEATURE_RO_COMPAT_METADATA_CSUM ; 
 int EXT4_MIN_BLOCK_SIZE ; 
 TYPE_8__* FUNC1 (struct super_block*) ; 
 scalar_t__ EXT4_SUPER_MAGIC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 struct buffer_head* FUNC2 (struct block_device*,int,int) ; 
 int FUNC3 (struct block_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct block_device* FUNC7 (int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct block_device*) ; 
 int FUNC9 (struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC13 (struct super_block*,struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 TYPE_3__* FUNC15 (struct block_device*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static journal_t *FUNC22(struct super_block *sb,
				       dev_t j_dev)
{
	struct buffer_head *bh;
	journal_t *journal;
	ext4_fsblk_t start;
	ext4_fsblk_t len;
	int hblock, blocksize;
	ext4_fsblk_t sb_block;
	unsigned long offset;
	struct ext4_super_block *es;
	struct block_device *bdev;

	FUNC0(!FUNC10(sb));

	bdev = FUNC7(j_dev, sb);
	if (bdev == NULL)
		return NULL;

	blocksize = sb->s_blocksize;
	hblock = FUNC3(bdev);
	if (blocksize < hblock) {
		FUNC12(sb, KERN_ERR,
			"blocksize too small for journal device");
		goto out_bdev;
	}

	sb_block = EXT4_MIN_BLOCK_SIZE / blocksize;
	offset = EXT4_MIN_BLOCK_SIZE % blocksize;
	FUNC20(bdev, blocksize);
	if (!(bh = FUNC2(bdev, sb_block, blocksize))) {
		FUNC12(sb, KERN_ERR, "couldn't read superblock of "
		       "external journal");
		goto out_bdev;
	}

	es = (struct ext4_super_block *) (bh->b_data + offset);
	if ((FUNC16(es->s_magic) != EXT4_SUPER_MAGIC) ||
	    !(FUNC17(es->s_feature_incompat) &
	      EXT4_FEATURE_INCOMPAT_JOURNAL_DEV)) {
		FUNC12(sb, KERN_ERR, "external journal has "
					"bad superblock");
		FUNC5(bh);
		goto out_bdev;
	}

	if ((FUNC17(es->s_feature_ro_compat) &
	     EXT4_FEATURE_RO_COMPAT_METADATA_CSUM) &&
	    es->s_checksum != FUNC13(sb, es)) {
		FUNC12(sb, KERN_ERR, "external journal has "
				       "corrupt superblock");
		FUNC5(bh);
		goto out_bdev;
	}

	if (FUNC19(FUNC1(sb)->s_es->s_journal_uuid, es->s_uuid, 16)) {
		FUNC12(sb, KERN_ERR, "journal UUID does not match");
		FUNC5(bh);
		goto out_bdev;
	}

	len = FUNC9(es);
	start = sb_block + 1;
	FUNC5(bh);	/* we're done with the superblock */

	journal = FUNC15(bdev, sb->s_bdev,
					start, len, blocksize);
	if (!journal) {
		FUNC12(sb, KERN_ERR, "failed to create device journal");
		goto out_bdev;
	}
	journal->j_private = sb;
	FUNC18(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &journal->j_sb_buffer);
	FUNC21(journal->j_sb_buffer);
	if (!FUNC6(journal->j_sb_buffer)) {
		FUNC12(sb, KERN_ERR, "I/O error on journal device");
		goto out_journal;
	}
	if (FUNC4(journal->j_superblock->s_nr_users) != 1) {
		FUNC12(sb, KERN_ERR, "External journal has more than one "
					"user (unsupported) - %d",
			FUNC4(journal->j_superblock->s_nr_users));
		goto out_journal;
	}
	FUNC1(sb)->journal_bdev = bdev;
	FUNC11(sb, journal);
	return journal;

out_journal:
	FUNC14(journal);
out_bdev:
	FUNC8(bdev);
	return NULL;
}