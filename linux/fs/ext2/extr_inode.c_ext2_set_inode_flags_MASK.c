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
struct inode {int i_flags; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {unsigned int i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAX ; 
 unsigned int EXT2_APPEND_FL ; 
 unsigned int EXT2_DIRSYNC_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned int EXT2_IMMUTABLE_FL ; 
 unsigned int EXT2_NOATIME_FL ; 
 unsigned int EXT2_SYNC_FL ; 
 int S_APPEND ; 
 int S_DAX ; 
 int S_DIRSYNC ; 
 int S_IMMUTABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int S_NOATIME ; 
 int S_SYNC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct inode *inode)
{
	unsigned int flags = FUNC0(inode)->i_flags;

	inode->i_flags &= ~(S_SYNC | S_APPEND | S_IMMUTABLE | S_NOATIME |
				S_DIRSYNC | S_DAX);
	if (flags & EXT2_SYNC_FL)
		inode->i_flags |= S_SYNC;
	if (flags & EXT2_APPEND_FL)
		inode->i_flags |= S_APPEND;
	if (flags & EXT2_IMMUTABLE_FL)
		inode->i_flags |= S_IMMUTABLE;
	if (flags & EXT2_NOATIME_FL)
		inode->i_flags |= S_NOATIME;
	if (flags & EXT2_DIRSYNC_FL)
		inode->i_flags |= S_DIRSYNC;
	if (FUNC2(inode->i_sb, DAX) && FUNC1(inode->i_mode))
		inode->i_flags |= S_DAX;
}