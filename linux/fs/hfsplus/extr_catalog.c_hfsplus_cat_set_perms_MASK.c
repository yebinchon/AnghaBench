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
struct inode {int i_flags; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_nlink; } ;
struct hfsplus_perm {void* dev; void* group; void* owner; int /*<<< orphan*/  mode; int /*<<< orphan*/  userflags; int /*<<< orphan*/  rootflags; } ;
struct TYPE_2__ {int /*<<< orphan*/  userflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFSPLUS_FLG_APPEND ; 
 int /*<<< orphan*/  HFSPLUS_FLG_IMMUTABLE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

void FUNC8(struct inode *inode, struct hfsplus_perm *perms)
{
	if (inode->i_flags & S_IMMUTABLE)
		perms->rootflags |= HFSPLUS_FLG_IMMUTABLE;
	else
		perms->rootflags &= ~HFSPLUS_FLG_IMMUTABLE;
	if (inode->i_flags & S_APPEND)
		perms->rootflags |= HFSPLUS_FLG_APPEND;
	else
		perms->rootflags &= ~HFSPLUS_FLG_APPEND;

	perms->userflags = FUNC0(inode)->userflags;
	perms->mode = FUNC4(inode->i_mode);
	perms->owner = FUNC5(FUNC7(inode));
	perms->group = FUNC5(FUNC6(inode));

	if (FUNC3(inode->i_mode))
		perms->dev = FUNC5(inode->i_nlink);
	else if (FUNC1(inode->i_mode) || FUNC2(inode->i_mode))
		perms->dev = FUNC5(inode->i_rdev);
	else
		perms->dev = 0;
}