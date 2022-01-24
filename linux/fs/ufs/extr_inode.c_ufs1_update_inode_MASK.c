#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * i_symlink; int /*<<< orphan*/ * i_data; } ;
struct ufs_inode_info {TYPE_10__ i_u1; int /*<<< orphan*/  i_oeftflag; int /*<<< orphan*/  i_shadow; int /*<<< orphan*/  i_flags; } ;
struct TYPE_14__ {int /*<<< orphan*/ * ui_db; } ;
struct TYPE_24__ {TYPE_11__ ui_symlink; TYPE_11__ ui_addr; } ;
struct TYPE_22__ {void* ui_oeftflag; void* ui_shadow; } ;
struct TYPE_23__ {TYPE_7__ ui_sun; } ;
struct TYPE_21__ {scalar_t__ tv_usec; void* tv_sec; } ;
struct TYPE_19__ {scalar_t__ tv_usec; void* tv_sec; } ;
struct TYPE_17__ {scalar_t__ tv_usec; void* tv_sec; } ;
struct ufs_inode {TYPE_9__ ui_u2; TYPE_8__ ui_u3; void* ui_gen; void* ui_flags; void* ui_blocks; TYPE_6__ ui_mtime; TYPE_4__ ui_ctime; TYPE_2__ ui_atime; int /*<<< orphan*/  ui_size; void* ui_nlink; void* ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_18__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_16__ {int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_generation; TYPE_5__ i_mtime; TYPE_3__ i_ctime; TYPE_1__ i_atime; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;
struct TYPE_15__ {int s_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ufs_inode_info* FUNC2 (struct inode*) ; 
 TYPE_12__* FUNC3 (struct super_block*) ; 
 int UFS_UID_EFT ; 
 int UFS_UID_MASK ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct ufs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,struct ufs_inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct inode *inode, struct ufs_inode *ufs_inode)
{
	struct super_block *sb = inode->i_sb;
 	struct ufs_inode_info *ufsi = FUNC2(inode);

	ufs_inode->ui_mode = FUNC4(sb, inode->i_mode);
	ufs_inode->ui_nlink = FUNC4(sb, inode->i_nlink);

	FUNC12(sb, ufs_inode, FUNC8(inode));
	FUNC11(sb, ufs_inode, FUNC7(inode));

	ufs_inode->ui_size = FUNC6(sb, inode->i_size);
	ufs_inode->ui_atime.tv_sec = FUNC5(sb, inode->i_atime.tv_sec);
	ufs_inode->ui_atime.tv_usec = 0;
	ufs_inode->ui_ctime.tv_sec = FUNC5(sb, inode->i_ctime.tv_sec);
	ufs_inode->ui_ctime.tv_usec = 0;
	ufs_inode->ui_mtime.tv_sec = FUNC5(sb, inode->i_mtime.tv_sec);
	ufs_inode->ui_mtime.tv_usec = 0;
	ufs_inode->ui_blocks = FUNC5(sb, inode->i_blocks);
	ufs_inode->ui_flags = FUNC5(sb, ufsi->i_flags);
	ufs_inode->ui_gen = FUNC5(sb, inode->i_generation);

	if ((FUNC3(sb)->s_flags & UFS_UID_MASK) == UFS_UID_EFT) {
		ufs_inode->ui_u3.ui_sun.ui_shadow = FUNC5(sb, ufsi->i_shadow);
		ufs_inode->ui_u3.ui_sun.ui_oeftflag = FUNC5(sb, ufsi->i_oeftflag);
	}

	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode)) {
		/* ufs_inode->ui_u2.ui_addr.ui_db[0] = cpu_to_fs32(sb, inode->i_rdev); */
		ufs_inode->ui_u2.ui_addr.ui_db[0] = ufsi->i_u1.i_data[0];
	} else if (inode->i_blocks) {
		FUNC9(&ufs_inode->ui_u2.ui_addr, ufsi->i_u1.i_data,
		       sizeof(ufs_inode->ui_u2.ui_addr));
	}
	else {
		FUNC9(&ufs_inode->ui_u2.ui_symlink, ufsi->i_u1.i_symlink,
		       sizeof(ufs_inode->ui_u2.ui_symlink));
	}

	if (!inode->i_nlink)
		FUNC10 (ufs_inode, 0, sizeof(struct ufs_inode));
}