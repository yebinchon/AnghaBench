#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct super_block {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_mode; int i_size; int i_blocks; TYPE_3__ i_data; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; struct super_block* i_sb; void* i_ino; } ;
struct hpfs_inode_info {int i_ea_uid; int i_ea_gid; int i_ea_mode; int mmu_private; void* i_dno; void* i_parent_dir; } ;
struct TYPE_6__ {TYPE_1__* external; } ;
struct fnode {int /*<<< orphan*/  file_size; TYPE_2__ u; int /*<<< orphan*/  up; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_8__ {int sb_mode; int sb_chk; scalar_t__ sb_eas; } ;
struct TYPE_5__ {int /*<<< orphan*/  disk_secno; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFLNK ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct fnode*) ; 
 int /*<<< orphan*/  hpfs_aops ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,void*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hpfs_dir_iops ; 
 int /*<<< orphan*/  hpfs_dir_ops ; 
 int /*<<< orphan*/  hpfs_file_iops ; 
 int /*<<< orphan*/  hpfs_file_ops ; 
 void* FUNC7 (struct super_block*,struct fnode*,char*,int*) ; 
 struct hpfs_inode_info* FUNC8 (struct inode*) ; 
 struct fnode* FUNC9 (struct super_block*,void*,struct buffer_head**) ; 
 TYPE_4__* FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  hpfs_symlink_aops ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int) ; 

void FUNC21(struct inode *i)
{
	struct buffer_head *bh;
	struct fnode *fnode;
	struct super_block *sb = i->i_sb;
	struct hpfs_inode_info *hpfs_inode = FUNC8(i);
	void *ea;
	int ea_size;

	if (!(fnode = FUNC9(sb, i->i_ino, &bh))) {
		/*i->i_mode |= S_IFREG;
		i->i_mode &= ~0111;
		i->i_op = &hpfs_file_iops;
		i->i_fop = &hpfs_file_ops;
		clear_nlink(i);*/
		FUNC18(i);
		return;
	}
	if (FUNC10(i->i_sb)->sb_eas) {
		if ((ea = FUNC7(i->i_sb, fnode, "UID", &ea_size))) {
			if (ea_size == 2) {
				FUNC12(i, FUNC16(*(__le16*)ea));
				hpfs_inode->i_ea_uid = 1;
			}
			FUNC15(ea);
		}
		if ((ea = FUNC7(i->i_sb, fnode, "GID", &ea_size))) {
			if (ea_size == 2) {
				FUNC11(i, FUNC16(*(__le16*)ea));
				hpfs_inode->i_ea_gid = 1;
			}
			FUNC15(ea);
		}
		if ((ea = FUNC7(i->i_sb, fnode, "SYMLINK", &ea_size))) {
			FUNC15(ea);
			i->i_mode = S_IFLNK | 0777;
			i->i_op = &page_symlink_inode_operations;
			FUNC14(i);
			i->i_data.a_ops = &hpfs_symlink_aops;
			FUNC20(i, 1);
			i->i_size = ea_size;
			i->i_blocks = 1;
			FUNC4(bh);
			return;
		}
		if ((ea = FUNC7(i->i_sb, fnode, "MODE", &ea_size))) {
			int rdev = 0;
			umode_t mode = FUNC10(sb)->sb_mode;
			if (ea_size == 2) {
				mode = FUNC16(*(__le16*)ea);
				hpfs_inode->i_ea_mode = 1;
			}
			FUNC15(ea);
			i->i_mode = mode;
			if (FUNC0(mode) || FUNC1(mode)) {
				if ((ea = FUNC7(i->i_sb, fnode, "DEV", &ea_size))) {
					if (ea_size == 4)
						rdev = FUNC17(*(__le32*)ea);
					FUNC15(ea);
				}
			}
			if (FUNC0(mode) || FUNC1(mode) || FUNC2(mode) || FUNC3(mode)) {
				FUNC4(bh);
				FUNC20(i, 1);
				i->i_size = 0;
				i->i_blocks = 1;
				FUNC13(i, mode,
					FUNC19(rdev));
				return;
			}
		}
	}
	if (FUNC5(fnode)) {
		int n_dnodes, n_subdirs;
		i->i_mode |= S_IFDIR;
		i->i_op = &hpfs_dir_iops;
		i->i_fop = &hpfs_dir_ops;
		hpfs_inode->i_parent_dir = FUNC17(fnode->up);
		hpfs_inode->i_dno = FUNC17(fnode->u.external[0].disk_secno);
		if (FUNC10(sb)->sb_chk >= 2) {
			struct buffer_head *bh0;
			if (FUNC9(sb, hpfs_inode->i_parent_dir, &bh0)) FUNC4(bh0);
		}
		n_dnodes = 0; n_subdirs = 0;
		FUNC6(i->i_sb, hpfs_inode->i_dno, &n_dnodes, &n_subdirs, NULL);
		i->i_blocks = 4 * n_dnodes;
		i->i_size = 2048 * n_dnodes;
		FUNC20(i, 2 + n_subdirs);
	} else {
		i->i_mode |= S_IFREG;
		if (!hpfs_inode->i_ea_mode) i->i_mode &= ~0111;
		i->i_op = &hpfs_file_iops;
		i->i_fop = &hpfs_file_ops;
		FUNC20(i, 1);
		i->i_size = FUNC17(fnode->file_size);
		i->i_blocks = ((i->i_size + 511) >> 9) + 1;
		i->i_data.a_ops = &hpfs_aops;
		FUNC8(i)->mmu_private = i->i_size;
	}
	FUNC4(bh);
}