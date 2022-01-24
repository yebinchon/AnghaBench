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
typedef  int umode_t ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;

/* Variables and functions */
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int /*<<< orphan*/  CAP_FSETID ; 
 int S_ISGID ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISUID ; 
 int S_IXGRP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct dentry *dentry)
{
	umode_t mode = FUNC2(dentry)->i_mode;
	int kill = 0;

	/* suid always must be killed */
	if (FUNC3(mode & S_ISUID))
		kill = ATTR_KILL_SUID;

	/*
	 * sgid without any exec bits is just a mandatory locking mark; leave
	 * it alone.  If some exec bits are set, it's a real sgid; kill it.
	 */
	if (FUNC3((mode & S_ISGID) && (mode & S_IXGRP)))
		kill |= ATTR_KILL_SGID;

	if (FUNC3(kill && !FUNC1(CAP_FSETID) && FUNC0(mode)))
		return kill;

	return 0;
}