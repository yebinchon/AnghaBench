#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_mode; int /*<<< orphan*/  i_mtime; scalar_t__ i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_nlink; } ;
struct hfs_find_data {int entrylength; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; TYPE_1__* search_key; } ;
struct hfs_cat_file {int dummy; } ;
struct hfs_cat_dir {int dummy; } ;
struct TYPE_11__ {void* MdDat; int /*<<< orphan*/  PyLen; int /*<<< orphan*/  LgLen; int /*<<< orphan*/  ExtRec; int /*<<< orphan*/  Flags; int /*<<< orphan*/  FlNum; int /*<<< orphan*/  RPyLen; int /*<<< orphan*/  RLgLen; int /*<<< orphan*/  RExtRec; } ;
struct TYPE_10__ {int /*<<< orphan*/  Val; void* MdDat; int /*<<< orphan*/  DirID; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ file; TYPE_2__ dir; } ;
typedef  TYPE_4__ hfs_cat_rec ;
struct TYPE_14__ {int /*<<< orphan*/  cat_key; struct inode* rsrc_inode; } ;
struct TYPE_13__ {int /*<<< orphan*/  cat_tree; int /*<<< orphan*/  ext_tree; } ;
struct TYPE_9__ {int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
#define  HFS_CAT_CNID 130 
 scalar_t__ HFS_CDR_DIR ; 
 scalar_t__ HFS_CDR_FIL ; 
#define  HFS_EXT_CNID 129 
 int /*<<< orphan*/  HFS_FIL_LOCK ; 
 scalar_t__ HFS_FIRSTUSER_CNID ; 
 TYPE_8__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
#define  HFS_ROOT_CNID 128 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INODE ; 
 scalar_t__ FUNC4 (int) ; 
 int S_IWUSR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct hfs_find_data*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct inode *inode, struct writeback_control *wbc)
{
	struct inode *main_inode = inode;
	struct hfs_find_data fd;
	hfs_cat_rec rec;
	int res;

	FUNC11(INODE, "hfs_write_inode: %lu\n", inode->i_ino);
	res = FUNC12(inode);
	if (res)
		return res;

	if (inode->i_ino < HFS_FIRSTUSER_CNID) {
		switch (inode->i_ino) {
		case HFS_ROOT_CNID:
			break;
		case HFS_EXT_CNID:
			FUNC10(FUNC3(inode->i_sb)->ext_tree);
			return 0;
		case HFS_CAT_CNID:
			FUNC10(FUNC3(inode->i_sb)->cat_tree);
			return 0;
		default:
			FUNC0();
			return -EIO;
		}
	}

	if (FUNC2(inode))
		main_inode = FUNC1(inode)->rsrc_inode;

	if (!main_inode->i_nlink)
		return 0;

	if (FUNC14(FUNC3(main_inode->i_sb)->cat_tree, &fd))
		/* panic? */
		return -EIO;

	fd.search_key->cat = FUNC1(main_inode)->cat_key;
	if (FUNC9(&fd))
		/* panic? */
		goto out;

	if (FUNC4(main_inode->i_mode)) {
		if (fd.entrylength < sizeof(struct hfs_cat_dir))
			/* panic? */;
		FUNC7(fd.bnode, &rec, fd.entryoffset,
			   sizeof(struct hfs_cat_dir));
		if (rec.type != HFS_CDR_DIR ||
		    FUNC5(rec.dir.DirID) != inode->i_ino) {
		}

		rec.dir.MdDat = FUNC16(inode->i_mtime);
		rec.dir.Val = FUNC6(inode->i_size - 2);

		FUNC8(fd.bnode, &rec, fd.entryoffset,
			    sizeof(struct hfs_cat_dir));
	} else if (FUNC2(inode)) {
		FUNC7(fd.bnode, &rec, fd.entryoffset,
			       sizeof(struct hfs_cat_file));
		FUNC15(inode, rec.file.RExtRec,
				     &rec.file.RLgLen, &rec.file.RPyLen);
		FUNC8(fd.bnode, &rec, fd.entryoffset,
				sizeof(struct hfs_cat_file));
	} else {
		if (fd.entrylength < sizeof(struct hfs_cat_file))
			/* panic? */;
		FUNC7(fd.bnode, &rec, fd.entryoffset,
			   sizeof(struct hfs_cat_file));
		if (rec.type != HFS_CDR_FIL ||
		    FUNC5(rec.file.FlNum) != inode->i_ino) {
		}

		if (inode->i_mode & S_IWUSR)
			rec.file.Flags &= ~HFS_FIL_LOCK;
		else
			rec.file.Flags |= HFS_FIL_LOCK;
		FUNC15(inode, rec.file.ExtRec, &rec.file.LgLen, &rec.file.PyLen);
		rec.file.MdDat = FUNC16(inode->i_mtime);

		FUNC8(fd.bnode, &rec, fd.entryoffset,
			    sizeof(struct hfs_cat_file));
	}
out:
	FUNC13(&fd);
	return 0;
}