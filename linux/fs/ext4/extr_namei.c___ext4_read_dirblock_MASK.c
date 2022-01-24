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
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext4_dir_entry {int /*<<< orphan*/  rec_len; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  scalar_t__ dirblock_type_t ;
struct TYPE_5__ {int /*<<< orphan*/  comm; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 scalar_t__ DIRENT_HTREE ; 
 int /*<<< orphan*/  EFSBADCRC ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INDEX ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,unsigned int,char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 TYPE_2__* current ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ *,struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct inode*,struct ext4_dir_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,char const*,unsigned int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC14(struct inode *inode,
						ext4_lblk_t block,
						dirblock_type_t type,
						const char *func,
						unsigned int line)
{
	struct buffer_head *bh;
	struct ext4_dir_entry *dirent;
	int is_dx_block = 0;

	bh = FUNC6(NULL, inode, block, 0);
	if (FUNC1(bh)) {
		FUNC3(inode->i_sb, func, line,
			       "inode #%lu: lblock %lu: comm %s: "
			       "error %ld reading directory block",
			       inode->i_ino, (unsigned long)block,
			       current->comm, FUNC2(bh));

		return bh;
	}
	if (!bh && (type == INDEX || type == DIRENT_HTREE)) {
		FUNC9(inode, func, line, block,
				 "Directory hole found for htree %s block",
				 (type == INDEX) ? "index" : "leaf");
		return FUNC0(-EFSCORRUPTED);
	}
	if (!bh)
		return NULL;
	dirent = (struct ext4_dir_entry *) bh->b_data;
	/* Determine whether or not we have an index block */
	if (FUNC12(inode)) {
		if (block == 0)
			is_dx_block = 1;
		else if (FUNC11(dirent->rec_len,
						inode->i_sb->s_blocksize) ==
			 inode->i_sb->s_blocksize)
			is_dx_block = 1;
	}
	if (!is_dx_block && type == INDEX) {
		FUNC9(inode, func, line, block,
		       "directory leaf block found instead of index block");
		FUNC4(bh);
		return FUNC0(-EFSCORRUPTED);
	}
	if (!FUNC10(inode->i_sb) ||
	    FUNC5(bh))
		return bh;

	/*
	 * An empty leaf block can get mistaken for a index block; for
	 * this reason, we can only check the index checksum when the
	 * caller is sure it should be an index block.
	 */
	if (is_dx_block && type == INDEX) {
		if (FUNC8(inode, dirent))
			FUNC13(bh);
		else {
			FUNC9(inode, func, line, block,
					 "Directory index failed checksum");
			FUNC4(bh);
			return FUNC0(-EFSBADCRC);
		}
	}
	if (!is_dx_block) {
		if (FUNC7(inode, bh))
			FUNC13(bh);
		else {
			FUNC9(inode, func, line, block,
					 "Directory block failed checksum");
			FUNC4(bh);
			return FUNC0(-EFSBADCRC);
		}
	}
	return bh;
}