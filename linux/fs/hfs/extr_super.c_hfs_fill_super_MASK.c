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
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_xattr; int /*<<< orphan*/ * s_op; struct hfs_sb_info* s_fs_info; } ;
struct inode {int dummy; } ;
struct hfs_sb_info {int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  mdb_work; int /*<<< orphan*/  work_lock; struct super_block* sb; } ;
struct hfs_find_data {int entrylength; TYPE_1__* search_key; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; } ;
typedef  int /*<<< orphan*/  rec ;
typedef  int /*<<< orphan*/  hfs_cat_rec ;
struct TYPE_4__ {int /*<<< orphan*/  cat_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFS_ROOT_CNID ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_NODIRATIME ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  flush_mdb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  hfs_dentry_operations ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 struct inode* FUNC7 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  hfs_super_operations ; 
 int /*<<< orphan*/  hfs_xattr_handlers ; 
 struct hfs_sb_info* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct hfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct super_block *sb, void *data, int silent)
{
	struct hfs_sb_info *sbi;
	struct hfs_find_data fd;
	hfs_cat_rec rec;
	struct inode *root_inode;
	int res;

	sbi = FUNC11(sizeof(struct hfs_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;

	sbi->sb = sb;
	sb->s_fs_info = sbi;
	FUNC16(&sbi->work_lock);
	FUNC1(&sbi->mdb_work, flush_mdb);

	res = -EINVAL;
	if (!FUNC13((char *)data, sbi)) {
		FUNC14("unable to parse mount options\n");
		goto bail;
	}

	sb->s_op = &hfs_super_operations;
	sb->s_xattr = hfs_xattr_handlers;
	sb->s_flags |= SB_NODIRATIME;
	FUNC12(&sbi->bitmap_lock);

	res = FUNC8(sb);
	if (res) {
		if (!silent)
			FUNC15("can't find a HFS filesystem on dev %s\n",
				FUNC9(sb));
		res = -EINVAL;
		goto bail;
	}

	/* try to get the root inode */
	res = FUNC6(FUNC0(sb)->cat_tree, &fd);
	if (res)
		goto bail_no_root;
	res = FUNC4(sb, HFS_ROOT_CNID, &fd);
	if (!res) {
		if (fd.entrylength > sizeof(rec) || fd.entrylength < 0) {
			res =  -EIO;
			goto bail;
		}
		FUNC3(fd.bnode, &rec, fd.entryoffset, fd.entrylength);
	}
	if (res) {
		FUNC5(&fd);
		goto bail_no_root;
	}
	res = -EINVAL;
	root_inode = FUNC7(sb, &fd.search_key->cat, &rec);
	FUNC5(&fd);
	if (!root_inode)
		goto bail_no_root;

	sb->s_d_op = &hfs_dentry_operations;
	res = -ENOMEM;
	sb->s_root = FUNC2(root_inode);
	if (!sb->s_root)
		goto bail_no_root;

	/* everything's okay */
	return 0;

bail_no_root:
	FUNC14("get root inode failed\n");
bail:
	FUNC10(sb);
	return res;
}