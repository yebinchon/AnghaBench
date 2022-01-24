#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct reiserfs_super_block {int dummy; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_bdev; scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ REISERFS_VERSION_2 ; 
 scalar_t__ FUNC0 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC1 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC2 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct reiserfs_super_block*) ; 
 int FUNC6 (struct reiserfs_super_block*) ; 
 int FUNC7 (struct reiserfs_super_block*) ; 
 int FUNC8 (struct reiserfs_super_block*) ; 
 int FUNC9 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct reiserfs_super_block*) ; 
 int FUNC11 (struct reiserfs_super_block*) ; 
 int FUNC12 (struct reiserfs_super_block*) ; 
 int FUNC13 (struct reiserfs_super_block*) ; 
 int FUNC14 (struct reiserfs_super_block*) ; 
 int FUNC15 (struct reiserfs_super_block*) ; 
 int FUNC16 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC17 (struct reiserfs_super_block*) ; 

__attribute__((used)) static int FUNC18(struct buffer_head *bh)
{
	struct reiserfs_super_block *rs =
	    (struct reiserfs_super_block *)(bh->b_data);
	int skipped, data_blocks;
	char *version;

	if (FUNC0(rs)) {
		version = "3.5";
	} else if (FUNC1(rs)) {
		version = "3.6";
	} else if (FUNC2(rs)) {
		version = ((FUNC17(rs) == REISERFS_VERSION_2) ?
			   "3.6" : "3.5");
	} else {
		return 1;
	}

	FUNC3("%pg\'s super block is in block %llu\n", bh->b_bdev,
	       (unsigned long long)bh->b_blocknr);
	FUNC3("Reiserfs version %s\n", version);
	FUNC3("Block count %u\n", FUNC5(rs));
	FUNC3("Blocksize %d\n", FUNC6(rs));
	FUNC3("Free blocks %u\n", FUNC8(rs));
	/*
	 * FIXME: this would be confusing if
	 * someone stores reiserfs super block in some data block ;)
//    skipped = (bh->b_blocknr * bh->b_size) / sb_blocksize(rs);
	 */
	skipped = bh->b_blocknr;
	data_blocks = FUNC5(rs) - skipped - 1 - FUNC7(rs) -
	    (!FUNC2(rs) ? FUNC13(rs) +
	     1 : FUNC14(rs)) - FUNC8(rs);
	FUNC3
	    ("Busy blocks (skipped %d, bitmaps - %d, journal (or reserved) blocks - %d\n"
	     "1 super block, %d data blocks\n", skipped, FUNC7(rs),
	     (!FUNC2(rs) ? (FUNC13(rs) + 1) :
	      FUNC14(rs)), data_blocks);
	FUNC3("Root block %u\n", FUNC15(rs));
	FUNC3("Journal block (first) %d\n", FUNC11(rs));
	FUNC3("Journal dev %d\n", FUNC12(rs));
	FUNC3("Journal orig size %d\n", FUNC13(rs));
	FUNC3("FS state %d\n", FUNC9(rs));
	FUNC3("Hash function \"%s\"\n",
	       FUNC4(FUNC10(rs)));

	FUNC3("Tree height %d\n", FUNC16(rs));
	return 0;
}