#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {scalar_t__ ns_inode_size; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_bmap; int /*<<< orphan*/  i_flags; } ;
struct nilfs_inode {void* i_device_code; scalar_t__ i_pad; scalar_t__ i_xattr; void* i_generation; void* i_flags; void* i_blocks; void* i_mtime_nsec; void* i_ctime_nsec; void* i_mtime; void* i_ctime; void* i_size; void* i_links_count; void* i_gid; void* i_uid; void* i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; TYPE_3__* i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_blocks; TYPE_2__ i_mtime; TYPE_1__ i_ctime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_6__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nilfs_inode*) ; 

void FUNC12(struct inode *inode,
			      struct nilfs_inode *raw_inode, int has_bmap)
{
	struct nilfs_inode_info *ii = FUNC0(inode);

	raw_inode->i_mode = FUNC4(inode->i_mode);
	raw_inode->i_uid = FUNC5(FUNC9(inode));
	raw_inode->i_gid = FUNC5(FUNC8(inode));
	raw_inode->i_links_count = FUNC4(inode->i_nlink);
	raw_inode->i_size = FUNC6(inode->i_size);
	raw_inode->i_ctime = FUNC6(inode->i_ctime.tv_sec);
	raw_inode->i_mtime = FUNC6(inode->i_mtime.tv_sec);
	raw_inode->i_ctime_nsec = FUNC5(inode->i_ctime.tv_nsec);
	raw_inode->i_mtime_nsec = FUNC5(inode->i_mtime.tv_nsec);
	raw_inode->i_blocks = FUNC6(inode->i_blocks);

	raw_inode->i_flags = FUNC5(ii->i_flags);
	raw_inode->i_generation = FUNC5(inode->i_generation);

	if (FUNC1(inode->i_ino)) {
		struct the_nilfs *nilfs = inode->i_sb->s_fs_info;

		/* zero-fill unused portion in the case of super root block */
		raw_inode->i_xattr = 0;
		raw_inode->i_pad = 0;
		FUNC10((void *)raw_inode + sizeof(*raw_inode), 0,
		       nilfs->ns_inode_size - sizeof(*raw_inode));
	}

	if (has_bmap)
		FUNC11(ii->i_bmap, raw_inode);
	else if (FUNC3(inode->i_mode) || FUNC2(inode->i_mode))
		raw_inode->i_device_code =
			FUNC6(FUNC7(inode->i_rdev));
	/*
	 * When extending inode, nilfs->ns_inode_size should be checked
	 * for substitutions of appended fields.
	 */
}