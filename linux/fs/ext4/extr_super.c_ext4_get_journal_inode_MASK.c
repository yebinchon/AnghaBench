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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_IGET_SPECIAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct super_block*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC7(struct super_block *sb,
					     unsigned int journal_inum)
{
	struct inode *journal_inode;

	/*
	 * Test for the existence of a valid inode on disk.  Bad things
	 * happen if we iget() an unused inode, as the subsequent iput()
	 * will try to delete it.
	 */
	journal_inode = FUNC2(sb, journal_inum, EXT4_IGET_SPECIAL);
	if (FUNC0(journal_inode)) {
		FUNC3(sb, KERN_ERR, "no journal found");
		return NULL;
	}
	if (!journal_inode->i_nlink) {
		FUNC6(journal_inode);
		FUNC4(journal_inode);
		FUNC3(sb, KERN_ERR, "journal inode is deleted");
		return NULL;
	}

	FUNC5(2, "Journal inode found at %p: %lld bytes\n",
		  journal_inode, journal_inode->i_size);
	if (!FUNC1(journal_inode->i_mode)) {
		FUNC3(sb, KERN_ERR, "invalid journal inode");
		FUNC4(journal_inode);
		return NULL;
	}
	return journal_inode;
}