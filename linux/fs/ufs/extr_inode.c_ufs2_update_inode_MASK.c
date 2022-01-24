#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * i_symlink; int /*<<< orphan*/ * u2_i_data; } ;
struct ufs_inode_info {TYPE_5__ i_u1; int /*<<< orphan*/  i_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ui_db; } ;
struct TYPE_10__ {TYPE_6__ ui_symlink; TYPE_6__ ui_addr; } ;
struct ufs2_inode {TYPE_4__ ui_u2; void* ui_gen; void* ui_flags; void* ui_blocks; void* ui_mtimensec; void* ui_mtime; void* ui_ctimensec; void* ui_ctime; void* ui_atimensec; void* ui_atime; void* ui_size; void* ui_gid; void* ui_uid; void* ui_nlink; void* ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_generation; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct ufs_inode_info* FUNC3 (struct inode*) ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs2_inode*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct inode *inode, struct ufs2_inode *ufs_inode)
{
	struct super_block *sb = inode->i_sb;
 	struct ufs_inode_info *ufsi = FUNC3(inode);

	FUNC2("ENTER\n");
	ufs_inode->ui_mode = FUNC4(sb, inode->i_mode);
	ufs_inode->ui_nlink = FUNC4(sb, inode->i_nlink);

	ufs_inode->ui_uid = FUNC5(sb, FUNC8(inode));
	ufs_inode->ui_gid = FUNC5(sb, FUNC7(inode));

	ufs_inode->ui_size = FUNC6(sb, inode->i_size);
	ufs_inode->ui_atime = FUNC6(sb, inode->i_atime.tv_sec);
	ufs_inode->ui_atimensec = FUNC5(sb, inode->i_atime.tv_nsec);
	ufs_inode->ui_ctime = FUNC6(sb, inode->i_ctime.tv_sec);
	ufs_inode->ui_ctimensec = FUNC5(sb, inode->i_ctime.tv_nsec);
	ufs_inode->ui_mtime = FUNC6(sb, inode->i_mtime.tv_sec);
	ufs_inode->ui_mtimensec = FUNC5(sb, inode->i_mtime.tv_nsec);

	ufs_inode->ui_blocks = FUNC6(sb, inode->i_blocks);
	ufs_inode->ui_flags = FUNC5(sb, ufsi->i_flags);
	ufs_inode->ui_gen = FUNC5(sb, inode->i_generation);

	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode)) {
		/* ufs_inode->ui_u2.ui_addr.ui_db[0] = cpu_to_fs32(sb, inode->i_rdev); */
		ufs_inode->ui_u2.ui_addr.ui_db[0] = ufsi->i_u1.u2_i_data[0];
	} else if (inode->i_blocks) {
		FUNC9(&ufs_inode->ui_u2.ui_addr, ufsi->i_u1.u2_i_data,
		       sizeof(ufs_inode->ui_u2.ui_addr));
	} else {
		FUNC9(&ufs_inode->ui_u2.ui_symlink, ufsi->i_u1.i_symlink,
		       sizeof(ufs_inode->ui_u2.ui_symlink));
 	}

	if (!inode->i_nlink)
		FUNC10 (ufs_inode, 0, sizeof(struct ufs2_inode));
	FUNC2("EXIT\n");
}