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
struct squashfs_sb_info {int /*<<< orphan*/  meta_index_mutex; } ;
struct meta_index {scalar_t__ locked; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct squashfs_sb_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct inode *inode, struct meta_index *meta)
{
	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
	FUNC0(&msblk->meta_index_mutex);
	meta->locked = 0;
	FUNC1(&msblk->meta_index_mutex);
}