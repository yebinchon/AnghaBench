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
struct inode {int i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_size; } ;
struct hfsplus_fork_raw {scalar_t__ total_size; } ;
struct hfsplus_vh {struct hfsplus_fork_raw attr_file; struct hfsplus_fork_raw start_file; struct hfsplus_fork_raw alloc_file; struct hfsplus_fork_raw cat_file; struct hfsplus_fork_raw ext_file; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  flags; struct hfs_btree* attr_tree; struct hfs_btree* cat_tree; struct hfs_btree* ext_tree; struct hfsplus_vh* s_vhdr; } ;
struct hfs_btree {int dummy; } ;

/* Variables and functions */
 int EIO ; 
#define  HFSPLUS_ALLOC_CNID 132 
#define  HFSPLUS_ATTR_CNID 131 
#define  HFSPLUS_CAT_CNID 130 
#define  HFSPLUS_EXT_CNID 129 
 struct hfsplus_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFSPLUS_SB_WRITEBACKUP ; 
#define  HFSPLUS_START_CNID 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfs_btree*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct hfsplus_fork_raw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode)
{
	struct hfsplus_sb_info *sbi = FUNC0(inode->i_sb);
	struct hfsplus_vh *vhdr = sbi->s_vhdr;
	struct hfsplus_fork_raw *fork;
	struct hfs_btree *tree = NULL;

	switch (inode->i_ino) {
	case HFSPLUS_EXT_CNID:
		fork = &vhdr->ext_file;
		tree = sbi->ext_tree;
		break;
	case HFSPLUS_CAT_CNID:
		fork = &vhdr->cat_file;
		tree = sbi->cat_tree;
		break;
	case HFSPLUS_ALLOC_CNID:
		fork = &vhdr->alloc_file;
		break;
	case HFSPLUS_START_CNID:
		fork = &vhdr->start_file;
		break;
	case HFSPLUS_ATTR_CNID:
		fork = &vhdr->attr_file;
		tree = sbi->attr_tree;
		break;
	default:
		return -EIO;
	}

	if (fork->total_size != FUNC1(inode->i_size)) {
		FUNC6(HFSPLUS_SB_WRITEBACKUP, &sbi->flags);
		FUNC4(inode->i_sb);
	}
	FUNC3(inode, fork);
	if (tree) {
		int err = FUNC2(tree);

		if (err) {
			FUNC5("b-tree write err: %d, ino %lu\n",
			       err, inode->i_ino);
			return err;
		}
	}
	return 0;
}