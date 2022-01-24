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
struct writeback_control {long nr_to_write; } ;
struct inode {TYPE_1__* i_sb; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_journal_flag_rwsem; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int EIO ; 
 struct ext4_sb_info* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct address_space*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct writeback_control*,int,long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct address_space *mapping,
			       struct writeback_control *wbc)
{
	int ret;
	long nr_to_write = wbc->nr_to_write;
	struct inode *inode = mapping->host;
	struct ext4_sb_info *sbi = FUNC0(mapping->host->i_sb);

	if (FUNC7(FUNC2(FUNC0(inode->i_sb))))
		return -EIO;

	FUNC3(&sbi->s_journal_flag_rwsem);
	FUNC5(inode, wbc);

	ret = FUNC1(mapping, inode->i_sb->s_bdev, wbc);
	FUNC6(inode, wbc, ret,
				     nr_to_write - wbc->nr_to_write);
	FUNC4(&sbi->s_journal_flag_rwsem);
	return ret;
}