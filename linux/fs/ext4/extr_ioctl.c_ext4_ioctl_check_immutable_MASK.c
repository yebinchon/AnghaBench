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
struct ext4_inode_info {unsigned int i_flags; int /*<<< orphan*/  i_projid; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EPERM ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 unsigned int EXT4_IMMUTABLE_FL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, __u32 new_projid,
				      unsigned int flags)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	unsigned int oldflags = ei->i_flags;

	if (!(oldflags & EXT4_IMMUTABLE_FL) || !(flags & EXT4_IMMUTABLE_FL))
		return 0;

	if ((oldflags & ~EXT4_IMMUTABLE_FL) != (flags & ~EXT4_IMMUTABLE_FL))
		return -EPERM;
	if (FUNC2(inode->i_sb) &&
	    FUNC1(ei->i_projid) != new_projid)
		return -EPERM;

	return 0;
}