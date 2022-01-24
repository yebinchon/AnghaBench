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
struct super_block {scalar_t__ s_blocksize; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_dir_entry {scalar_t__ inode; int /*<<< orphan*/  rec_len; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, ext4_lblk_t block,
			       struct ext4_dir_entry *de)
{
	struct super_block *sb = dir->i_sb;

	if (!FUNC1(dir))
		return 0;
	if (block == 0)
		return 1;
	if (de->inode == 0 &&
	    FUNC0(de->rec_len, sb->s_blocksize) ==
			sb->s_blocksize)
		return 1;
	return 0;
}