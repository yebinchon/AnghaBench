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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  EXT4_INODE_EA_INODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct inode *inode)
{
	if (FUNC0(inode->i_mode) || FUNC1(inode->i_mode) ||
	    FUNC3(inode, EXT4_INODE_EA_INODE))
		return EXT4_FREE_BLOCKS_METADATA | EXT4_FREE_BLOCKS_FORGET;
	else if (FUNC2(inode))
		return EXT4_FREE_BLOCKS_FORGET;
	return 0;
}