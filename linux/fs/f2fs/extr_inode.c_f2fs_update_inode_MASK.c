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
struct page {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct inode {scalar_t__ i_nlink; scalar_t__ i_generation; TYPE_1__ i_mtime; TYPE_1__ i_ctime; TYPE_1__ i_atime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_blocks; } ;
struct f2fs_inode {void* i_crtime_nsec; void* i_crtime; void* i_projid; void* i_inline_xattr_size; void* i_extra_isize; int /*<<< orphan*/  i_dir_level; void* i_generation; void* i_pino; void* i_flags; void* i_xattr_nid; void* i_gc_failures; void* i_current_depth; void* i_mtime_nsec; void* i_ctime_nsec; void* i_atime_nsec; void* i_mtime; void* i_ctime; void* i_atime; int /*<<< orphan*/  i_ext; void* i_blocks; void* i_size; void* i_links; void* i_gid; void* i_uid; int /*<<< orphan*/  i_advise; void* i_mode; } ;
struct extent_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  largest; } ;
typedef  scalar_t__ projid_t ;
struct TYPE_4__ {scalar_t__ i_current_depth; scalar_t__ i_xattr_nid; scalar_t__ i_flags; scalar_t__ i_pino; TYPE_1__ i_crtime; TYPE_1__* i_disk_time; int /*<<< orphan*/  i_extra_isize; int /*<<< orphan*/  i_projid; int /*<<< orphan*/  i_inline_xattr_size; int /*<<< orphan*/  i_dir_level; int /*<<< orphan*/ * i_gc_failures; int /*<<< orphan*/  i_advise; struct extent_tree* extent_tree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct f2fs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct f2fs_inode* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 size_t GC_FAILURE_PIN ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct f2fs_inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (scalar_t__) ; 
 void* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i_crtime ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  i_projid ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,struct f2fs_inode*) ; 

void FUNC29(struct inode *inode, struct page *node_page)
{
	struct f2fs_inode *ri;
	struct extent_tree *et = FUNC1(inode)->extent_tree;

	FUNC18(node_page, NODE, true, true);
	FUNC26(node_page);

	FUNC14(inode);

	ri = FUNC2(node_page);

	ri->i_mode = FUNC9(inode->i_mode);
	ri->i_advise = FUNC1(inode)->i_advise;
	ri->i_uid = FUNC10(FUNC22(inode));
	ri->i_gid = FUNC10(FUNC20(inode));
	ri->i_links = FUNC10(inode->i_nlink);
	ri->i_size = FUNC11(FUNC21(inode));
	ri->i_blocks = FUNC11(FUNC4(inode->i_blocks) + 1);

	if (et) {
		FUNC24(&et->lock);
		FUNC27(&et->largest, &ri->i_ext);
		FUNC25(&et->lock);
	} else {
		FUNC23(&ri->i_ext, 0, sizeof(ri->i_ext));
	}
	FUNC28(inode, ri);

	ri->i_atime = FUNC11(inode->i_atime.tv_sec);
	ri->i_ctime = FUNC11(inode->i_ctime.tv_sec);
	ri->i_mtime = FUNC11(inode->i_mtime.tv_sec);
	ri->i_atime_nsec = FUNC10(inode->i_atime.tv_nsec);
	ri->i_ctime_nsec = FUNC10(inode->i_ctime.tv_nsec);
	ri->i_mtime_nsec = FUNC10(inode->i_mtime.tv_nsec);
	if (FUNC5(inode->i_mode))
		ri->i_current_depth =
			FUNC10(FUNC1(inode)->i_current_depth);
	else if (FUNC6(inode->i_mode))
		ri->i_gc_failures =
			FUNC9(FUNC1(inode)->i_gc_failures[GC_FAILURE_PIN]);
	ri->i_xattr_nid = FUNC10(FUNC1(inode)->i_xattr_nid);
	ri->i_flags = FUNC10(FUNC1(inode)->i_flags);
	ri->i_pino = FUNC10(FUNC1(inode)->i_pino);
	ri->i_generation = FUNC10(inode->i_generation);
	ri->i_dir_level = FUNC1(inode)->i_dir_level;

	if (FUNC12(inode)) {
		ri->i_extra_isize = FUNC9(FUNC1(inode)->i_extra_isize);

		if (FUNC15(FUNC3(inode)))
			ri->i_inline_xattr_size =
				FUNC9(FUNC1(inode)->i_inline_xattr_size);

		if (FUNC17(FUNC3(inode)) &&
			FUNC0(ri, FUNC1(inode)->i_extra_isize,
								i_projid)) {
			projid_t i_projid;

			i_projid = FUNC19(&init_user_ns,
						FUNC1(inode)->i_projid);
			ri->i_projid = FUNC10(i_projid);
		}

		if (FUNC16(FUNC3(inode)) &&
			FUNC0(ri, FUNC1(inode)->i_extra_isize,
								i_crtime)) {
			ri->i_crtime =
				FUNC11(FUNC1(inode)->i_crtime.tv_sec);
			ri->i_crtime_nsec =
				FUNC10(FUNC1(inode)->i_crtime.tv_nsec);
		}
	}

	FUNC7(inode, ri);

	/* deleted inode */
	if (inode->i_nlink == 0)
		FUNC8(node_page);

	FUNC1(inode)->i_disk_time[0] = inode->i_atime;
	FUNC1(inode)->i_disk_time[1] = inode->i_ctime;
	FUNC1(inode)->i_disk_time[2] = inode->i_mtime;
	FUNC1(inode)->i_disk_time[3] = FUNC1(inode)->i_crtime;

#ifdef CONFIG_F2FS_CHECK_FS
	f2fs_inode_chksum_set(F2FS_I_SB(inode), node_page);
#endif
}