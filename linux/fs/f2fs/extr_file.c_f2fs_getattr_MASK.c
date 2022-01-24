#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct kstat {int attributes; int attributes_mask; int blocks; int size; TYPE_1__ btime; int /*<<< orphan*/  result_mask; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct f2fs_inode_info {unsigned int i_flags; TYPE_2__ i_crtime; int /*<<< orphan*/  i_extra_isize; } ;
struct f2fs_inode {int dummy; } ;

/* Variables and functions */
 unsigned int F2FS_APPEND_FL ; 
 scalar_t__ FUNC0 (struct f2fs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f2fs_inode_info* FUNC1 (struct inode*) ; 
 unsigned int F2FS_IMMUTABLE_FL ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 unsigned int F2FS_NODUMP_FL ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int STATX_ATTR_APPEND ; 
 int STATX_ATTR_ENCRYPTED ; 
 int STATX_ATTR_IMMUTABLE ; 
 int STATX_ATTR_NODUMP ; 
 int /*<<< orphan*/  STATX_BTIME ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  i_crtime ; 

int FUNC11(const struct path *path, struct kstat *stat,
		 u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC5(path->dentry);
	struct f2fs_inode_info *fi = FUNC1(inode);
	struct f2fs_inode *ri;
	unsigned int flags;

	if (FUNC6(inode) &&
			FUNC9(FUNC2(inode)) &&
			FUNC0(ri, fi->i_extra_isize, i_crtime)) {
		stat->result_mask |= STATX_BTIME;
		stat->btime.tv_sec = fi->i_crtime.tv_sec;
		stat->btime.tv_nsec = fi->i_crtime.tv_nsec;
	}

	flags = fi->i_flags;
	if (flags & F2FS_APPEND_FL)
		stat->attributes |= STATX_ATTR_APPEND;
	if (FUNC3(inode))
		stat->attributes |= STATX_ATTR_ENCRYPTED;
	if (flags & F2FS_IMMUTABLE_FL)
		stat->attributes |= STATX_ATTR_IMMUTABLE;
	if (flags & F2FS_NODUMP_FL)
		stat->attributes |= STATX_ATTR_NODUMP;

	stat->attributes_mask |= (STATX_ATTR_APPEND |
				  STATX_ATTR_ENCRYPTED |
				  STATX_ATTR_IMMUTABLE |
				  STATX_ATTR_NODUMP);

	FUNC10(inode, stat);

	/* we need to show initial sectors used for inline_data/dentries */
	if ((FUNC4(inode->i_mode) && FUNC7(inode)) ||
					FUNC8(inode))
		stat->blocks += (stat->size + 511) >> 9;

	return 0;
}