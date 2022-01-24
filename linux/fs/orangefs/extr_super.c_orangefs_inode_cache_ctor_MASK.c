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
struct orangefs_inode_s {int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *req)
{
	struct orangefs_inode_s *orangefs_inode = req;

	FUNC1(&orangefs_inode->vfs_inode);
	FUNC0(&orangefs_inode->xattr_sem);
}