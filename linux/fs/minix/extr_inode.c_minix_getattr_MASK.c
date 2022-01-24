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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int s_blocksize; } ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int blocks; int blksize; int /*<<< orphan*/  size; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ MINIX_V1 ; 
 int FUNC1 (int /*<<< orphan*/ ,struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct super_block*) ; 
 struct inode* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct kstat*) ; 

int FUNC5(const struct path *path, struct kstat *stat,
		  u32 request_mask, unsigned int flags)
{
	struct super_block *sb = path->dentry->d_sb;
	struct inode *inode = FUNC3(path->dentry);

	FUNC4(inode, stat);
	if (FUNC0(inode) == MINIX_V1)
		stat->blocks = (BLOCK_SIZE / 512) * FUNC1(stat->size, sb);
	else
		stat->blocks = (sb->s_blocksize / 512) * FUNC2(stat->size, sb);
	stat->blksize = sb->s_blocksize;
	return 0;
}