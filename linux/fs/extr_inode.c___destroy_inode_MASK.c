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
struct inode {scalar_t__ i_default_acl; scalar_t__ i_acl; TYPE_1__* i_sb; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_remove_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  nr_inodes ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct inode *inode)
{
	FUNC0(FUNC6(inode));
	FUNC5(inode);
	FUNC10(inode);
	FUNC4(inode);
	FUNC8(inode);
	if (!inode->i_nlink) {
		FUNC1(FUNC3(&inode->i_sb->s_remove_count) == 0);
		FUNC2(&inode->i_sb->s_remove_count);
	}

#ifdef CONFIG_FS_POSIX_ACL
	if (inode->i_acl && !is_uncached_acl(inode->i_acl))
		posix_acl_release(inode->i_acl);
	if (inode->i_default_acl && !is_uncached_acl(inode->i_default_acl))
		posix_acl_release(inode->i_default_acl);
#endif
	FUNC11(nr_inodes);
}