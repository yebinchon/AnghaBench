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
struct inode {int i_blocks; int i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int i_flags; scalar_t__ i_file_acl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EXT4_EA_INODE_FL ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int EXT4_N_BLOCKS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

int FUNC4(struct inode *inode)
{
	if (!(FUNC1(inode)->i_flags & EXT4_EA_INODE_FL)) {
		int ea_blocks = FUNC1(inode)->i_file_acl ?
				FUNC0(inode->i_sb) >> 9 : 0;

		if (FUNC3(inode))
			return 0;

		return (FUNC2(inode->i_mode) && inode->i_blocks - ea_blocks == 0);
	}
	return FUNC2(inode->i_mode) && inode->i_size &&
	       (inode->i_size < EXT4_N_BLOCKS * 4);
}