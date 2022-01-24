#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int /*<<< orphan*/  ino; int /*<<< orphan*/  blksize; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {scalar_t__ nfs; } ;
struct TYPE_5__ {TYPE_1__ options; int /*<<< orphan*/  cluster_size; } ;

/* Variables and functions */
 scalar_t__ FAT_NFS_NOSTALE_RO ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct kstat*) ; 

int FUNC4(const struct path *path, struct kstat *stat,
		u32 request_mask, unsigned int flags)
{
	struct inode *inode = FUNC1(path->dentry);
	FUNC3(inode, stat);
	stat->blksize = FUNC0(inode->i_sb)->cluster_size;

	if (FUNC0(inode->i_sb)->options.nfs == FAT_NFS_NOSTALE_RO) {
		/* Use i_pos for ino. This is used as fileid of nfs. */
		stat->ino = FUNC2(FUNC0(inode->i_sb), inode);
	}
	return 0;
}