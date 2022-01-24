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
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DELALLOC ; 
#define  EXT4_INODE_JOURNAL_DATA_MODE 130 
#define  EXT4_INODE_ORDERED_DATA_MODE 129 
#define  EXT4_INODE_WRITEBACK_DATA_MODE 128 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ext4_aops ; 
 int /*<<< orphan*/  ext4_da_aops ; 
 int /*<<< orphan*/  ext4_dax_aops ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  ext4_journalled_aops ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct inode *inode)
{
	switch (FUNC2(inode)) {
	case EXT4_INODE_ORDERED_DATA_MODE:
	case EXT4_INODE_WRITEBACK_DATA_MODE:
		break;
	case EXT4_INODE_JOURNAL_DATA_MODE:
		inode->i_mapping->a_ops = &ext4_journalled_aops;
		return;
	default:
		FUNC0();
	}
	if (FUNC1(inode))
		inode->i_mapping->a_ops = &ext4_dax_aops;
	else if (FUNC3(inode->i_sb, DELALLOC))
		inode->i_mapping->a_ops = &ext4_da_aops;
	else
		inode->i_mapping->a_ops = &ext4_aops;
}