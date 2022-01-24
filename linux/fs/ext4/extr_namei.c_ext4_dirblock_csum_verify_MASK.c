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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_tail {scalar_t__ det_checksum; } ;
struct buffer_head {int b_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ext4_dir_entry_tail* FUNC2 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

int FUNC4(struct inode *inode, struct buffer_head *bh)
{
	struct ext4_dir_entry_tail *t;

	if (!FUNC1(inode->i_sb))
		return 1;

	t = FUNC2(inode, bh);
	if (!t) {
		FUNC3(inode);
		return 0;
	}

	if (t->det_checksum != FUNC0(inode, bh->b_data,
						  (char *)t - bh->b_data))
		return 0;

	return 1;
}