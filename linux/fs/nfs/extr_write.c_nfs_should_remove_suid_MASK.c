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
typedef  int umode_t ;
struct inode {int i_mode; } ;

/* Variables and functions */
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int S_ISGID ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISUID ; 
 int S_IXGRP ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(const struct inode *inode)
{
	umode_t mode = inode->i_mode;
	int kill = 0;

	/* suid always must be killed */
	if (FUNC1(mode & S_ISUID))
		kill = ATTR_KILL_SUID;

	/*
	 * sgid without any exec bits is just a mandatory locking mark; leave
	 * it alone.  If some exec bits are set, it's a real sgid; kill it.
	 */
	if (FUNC1((mode & S_ISGID) && (mode & S_IXGRP)))
		kill |= ATTR_KILL_SGID;

	if (FUNC1(kill && FUNC0(mode)))
		return kill;

	return 0;
}