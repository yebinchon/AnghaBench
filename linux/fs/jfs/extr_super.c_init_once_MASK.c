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
struct jfs_inode_info {int active_ag; int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  ag_lock; int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  rdwrlock; int /*<<< orphan*/  anon_inode_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct jfs_inode_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *foo)
{
	struct jfs_inode_info *jfs_ip = (struct jfs_inode_info *) foo;

	FUNC3(jfs_ip, 0, sizeof(struct jfs_inode_info));
	FUNC0(&jfs_ip->anon_inode_list);
	FUNC1(&jfs_ip->rdwrlock);
	FUNC4(&jfs_ip->commit_mutex);
	FUNC1(&jfs_ip->xattr_sem);
	FUNC5(&jfs_ip->ag_lock);
	jfs_ip->active_ag = -1;
	FUNC2(&jfs_ip->vfs_inode);
}