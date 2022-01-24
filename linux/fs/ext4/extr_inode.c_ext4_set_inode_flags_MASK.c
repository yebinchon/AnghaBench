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
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int i_flags; } ;

/* Variables and functions */
 unsigned int EXT4_APPEND_FL ; 
 unsigned int EXT4_CASEFOLD_FL ; 
 unsigned int EXT4_DIRSYNC_FL ; 
 unsigned int EXT4_ENCRYPT_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned int EXT4_IMMUTABLE_FL ; 
 unsigned int EXT4_NOATIME_FL ; 
 unsigned int EXT4_SYNC_FL ; 
 unsigned int EXT4_VERITY_FL ; 
 unsigned int S_APPEND ; 
 unsigned int S_CASEFOLD ; 
 unsigned int S_DAX ; 
 unsigned int S_DIRSYNC ; 
 unsigned int S_ENCRYPTED ; 
 unsigned int S_IMMUTABLE ; 
 unsigned int S_NOATIME ; 
 unsigned int S_SYNC ; 
 unsigned int S_VERITY ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned int,unsigned int) ; 

void FUNC3(struct inode *inode)
{
	unsigned int flags = FUNC0(inode)->i_flags;
	unsigned int new_fl = 0;

	if (flags & EXT4_SYNC_FL)
		new_fl |= S_SYNC;
	if (flags & EXT4_APPEND_FL)
		new_fl |= S_APPEND;
	if (flags & EXT4_IMMUTABLE_FL)
		new_fl |= S_IMMUTABLE;
	if (flags & EXT4_NOATIME_FL)
		new_fl |= S_NOATIME;
	if (flags & EXT4_DIRSYNC_FL)
		new_fl |= S_DIRSYNC;
	if (FUNC1(inode))
		new_fl |= S_DAX;
	if (flags & EXT4_ENCRYPT_FL)
		new_fl |= S_ENCRYPTED;
	if (flags & EXT4_CASEFOLD_FL)
		new_fl |= S_CASEFOLD;
	if (flags & EXT4_VERITY_FL)
		new_fl |= S_VERITY;
	FUNC2(inode, new_fl,
			S_SYNC|S_APPEND|S_IMMUTABLE|S_NOATIME|S_DIRSYNC|S_DAX|
			S_ENCRYPTED|S_CASEFOLD|S_VERITY);
}