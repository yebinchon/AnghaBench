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
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; void* i_mtime; void* i_atime; void* i_ctime; int /*<<< orphan*/  i_size; void* i_ino; TYPE_2__* i_mapping; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_sb; } ;
struct hfs_sb_info {int s_file_umask; int s_dir_umask; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;
struct hfs_iget_data {TYPE_4__* rec; int /*<<< orphan*/ * key; } ;
struct TYPE_9__ {int /*<<< orphan*/  MdDat; int /*<<< orphan*/  Val; int /*<<< orphan*/  DirID; } ;
struct TYPE_7__ {int Flags; int /*<<< orphan*/  MdDat; int /*<<< orphan*/  FlNum; int /*<<< orphan*/  ClpSize; int /*<<< orphan*/  RPyLen; int /*<<< orphan*/  RLgLen; int /*<<< orphan*/  RExtRec; int /*<<< orphan*/  PyLen; int /*<<< orphan*/  LgLen; int /*<<< orphan*/  ExtRec; } ;
struct TYPE_10__ {int type; TYPE_3__ dir; TYPE_1__ file; } ;
typedef  TYPE_4__ hfs_cat_rec ;
struct TYPE_12__ {int tz_secondswest; int /*<<< orphan*/  fs_blocks; int /*<<< orphan*/  flags; int /*<<< orphan*/  cat_key; int /*<<< orphan*/  open_dir_lock; int /*<<< orphan*/  open_dir_list; int /*<<< orphan*/  extents_lock; int /*<<< orphan*/ * rsrc_inode; } ;
struct TYPE_11__ {int tz_minuteswest; } ;
struct TYPE_8__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
#define  HFS_CDR_DIR 129 
#define  HFS_CDR_FIL 128 
 int HFS_FIL_LOCK ; 
 int /*<<< orphan*/  HFS_FLG_RSRC ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct hfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IRWXUGO ; 
 int S_IWUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfs_aops ; 
 int /*<<< orphan*/  hfs_dir_inode_operations ; 
 int /*<<< orphan*/  hfs_dir_operations ; 
 int /*<<< orphan*/  hfs_file_inode_operations ; 
 int /*<<< orphan*/  hfs_file_operations ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_5__ sys_tz ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, void *data)
{
	struct hfs_iget_data *idata = data;
	struct hfs_sb_info *hsb = FUNC2(inode->i_sb);
	hfs_cat_rec *rec;

	FUNC0(inode)->flags = 0;
	FUNC0(inode)->rsrc_inode = NULL;
	FUNC9(&FUNC0(inode)->extents_lock);
	FUNC3(&FUNC0(inode)->open_dir_list);
	FUNC11(&FUNC0(inode)->open_dir_lock);

	/* Initialize the inode */
	inode->i_uid = hsb->s_uid;
	inode->i_gid = hsb->s_gid;
	FUNC10(inode, 1);

	if (idata->key)
		FUNC0(inode)->cat_key = *idata->key;
	else
		FUNC0(inode)->flags |= HFS_FLG_RSRC;
	FUNC0(inode)->tz_secondswest = sys_tz.tz_minuteswest * 60;

	rec = idata->rec;
	switch (rec->type) {
	case HFS_CDR_FIL:
		if (!FUNC1(inode)) {
			FUNC6(inode, rec->file.ExtRec, rec->file.LgLen,
					    rec->file.PyLen, FUNC4(rec->file.ClpSize));
		} else {
			FUNC6(inode, rec->file.RExtRec, rec->file.RLgLen,
					    rec->file.RPyLen, FUNC4(rec->file.ClpSize));
		}

		inode->i_ino = FUNC5(rec->file.FlNum);
		inode->i_mode = S_IRUGO | S_IXUGO;
		if (!(rec->file.Flags & HFS_FIL_LOCK))
			inode->i_mode |= S_IWUGO;
		inode->i_mode &= ~hsb->s_file_umask;
		inode->i_mode |= S_IFREG;
		inode->i_ctime = inode->i_atime = inode->i_mtime =
				FUNC12(FUNC7(rec->file.MdDat));
		inode->i_op = &hfs_file_inode_operations;
		inode->i_fop = &hfs_file_operations;
		inode->i_mapping->a_ops = &hfs_aops;
		break;
	case HFS_CDR_DIR:
		inode->i_ino = FUNC5(rec->dir.DirID);
		inode->i_size = FUNC4(rec->dir.Val) + 2;
		FUNC0(inode)->fs_blocks = 0;
		inode->i_mode = S_IFDIR | (S_IRWXUGO & ~hsb->s_dir_umask);
		inode->i_ctime = inode->i_atime = inode->i_mtime =
				FUNC12(FUNC7(rec->dir.MdDat));
		inode->i_op = &hfs_dir_inode_operations;
		inode->i_fop = &hfs_dir_operations;
		break;
	default:
		FUNC8(inode);
	}
	return 0;
}