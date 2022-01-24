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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hostfs_inode_info {int fd; struct inode vfs_inode; int /*<<< orphan*/  open_mutex; scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct hostfs_inode_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC3(struct super_block *sb)
{
	struct hostfs_inode_info *hi;

	hi = FUNC1(sizeof(*hi), GFP_KERNEL_ACCOUNT);
	if (hi == NULL)
		return NULL;
	hi->fd = -1;
	hi->mode = 0;
	FUNC0(&hi->vfs_inode);
	FUNC2(&hi->open_mutex);
	return &hi->vfs_inode;
}