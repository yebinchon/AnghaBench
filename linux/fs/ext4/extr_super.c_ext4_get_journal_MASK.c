#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {struct super_block* j_private; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct inode* FUNC1 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 TYPE_1__* FUNC6 (struct inode*) ; 

__attribute__((used)) static journal_t *FUNC7(struct super_block *sb,
				   unsigned int journal_inum)
{
	struct inode *journal_inode;
	journal_t *journal;

	FUNC0(!FUNC2(sb));

	journal_inode = FUNC1(sb, journal_inum);
	if (!journal_inode)
		return NULL;

	journal = FUNC6(journal_inode);
	if (!journal) {
		FUNC4(sb, KERN_ERR, "Could not load journal inode");
		FUNC5(journal_inode);
		return NULL;
	}
	journal->j_private = sb;
	FUNC3(sb, journal);
	return journal;
}