#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct inode {int i_size; void* i_ctime; void* i_mtime; void* i_atime; int /*<<< orphan*/  i_mode; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct TYPE_8__ {scalar_t__ dev; } ;
struct hfsplus_cat_folder {int flags; scalar_t__ subfolders; int /*<<< orphan*/  create_date; int /*<<< orphan*/  attribute_mod_date; int /*<<< orphan*/  content_mod_date; int /*<<< orphan*/  access_date; scalar_t__ valence; TYPE_3__ permissions; } ;
struct hfsplus_cat_file {int /*<<< orphan*/  create_date; int /*<<< orphan*/  attribute_mod_date; int /*<<< orphan*/  content_mod_date; int /*<<< orphan*/  access_date; TYPE_3__ permissions; int /*<<< orphan*/  data_fork; int /*<<< orphan*/  rsrc_fork; } ;
struct hfs_find_data {int entrylength; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; } ;
struct TYPE_7__ {struct hfsplus_cat_file file; struct hfsplus_cat_folder folder; } ;
typedef  TYPE_2__ hfsplus_cat_entry ;
struct TYPE_9__ {int subfolders; int /*<<< orphan*/  create_date; scalar_t__ fs_blocks; scalar_t__ linkid; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HFSPLUS_FILE ; 
 scalar_t__ HFSPLUS_FOLDER ; 
 int /*<<< orphan*/  HFSPLUS_HAS_FOLDER_COUNT ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfsplus_aops ; 
 int /*<<< orphan*/  hfsplus_dir_inode_operations ; 
 int /*<<< orphan*/  hfsplus_dir_operations ; 
 int /*<<< orphan*/  hfsplus_file_inode_operations ; 
 int /*<<< orphan*/  hfsplus_file_operations ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(struct inode *inode, struct hfs_find_data *fd)
{
	hfsplus_cat_entry entry;
	int res = 0;
	u16 type;

	type = FUNC7(fd->bnode, fd->entryoffset);

	FUNC0(inode)->linkid = 0;
	if (type == HFSPLUS_FOLDER) {
		struct hfsplus_cat_folder *folder = &entry.folder;

		if (fd->entrylength < sizeof(struct hfsplus_cat_folder))
			/* panic? */;
		FUNC6(fd->bnode, &entry, fd->entryoffset,
					sizeof(struct hfsplus_cat_folder));
		FUNC9(inode, &folder->permissions, 1);
		FUNC14(inode, 1);
		inode->i_size = 2 + FUNC4(folder->valence);
		inode->i_atime = FUNC15(FUNC8(folder->access_date));
		inode->i_mtime = FUNC15(FUNC8(folder->content_mod_date));
		inode->i_ctime = FUNC15(FUNC8(folder->attribute_mod_date));
		FUNC0(inode)->create_date = folder->create_date;
		FUNC0(inode)->fs_blocks = 0;
		if (folder->flags & FUNC5(HFSPLUS_HAS_FOLDER_COUNT)) {
			FUNC0(inode)->subfolders =
				FUNC4(folder->subfolders);
		}
		inode->i_op = &hfsplus_dir_inode_operations;
		inode->i_fop = &hfsplus_dir_operations;
	} else if (type == HFSPLUS_FILE) {
		struct hfsplus_cat_file *file = &entry.file;

		if (fd->entrylength < sizeof(struct hfsplus_cat_file))
			/* panic? */;
		FUNC6(fd->bnode, &entry, fd->entryoffset,
					sizeof(struct hfsplus_cat_file));

		FUNC10(inode, FUNC1(inode) ?
					&file->rsrc_fork : &file->data_fork);
		FUNC9(inode, &file->permissions, 0);
		FUNC14(inode, 1);
		if (FUNC3(inode->i_mode)) {
			if (file->permissions.dev)
				FUNC14(inode,
					  FUNC4(file->permissions.dev));
			inode->i_op = &hfsplus_file_inode_operations;
			inode->i_fop = &hfsplus_file_operations;
			inode->i_mapping->a_ops = &hfsplus_aops;
		} else if (FUNC2(inode->i_mode)) {
			inode->i_op = &page_symlink_inode_operations;
			FUNC12(inode);
			inode->i_mapping->a_ops = &hfsplus_aops;
		} else {
			FUNC11(inode, inode->i_mode,
					   FUNC4(file->permissions.dev));
		}
		inode->i_atime = FUNC15(FUNC8(file->access_date));
		inode->i_mtime = FUNC15(FUNC8(file->content_mod_date));
		inode->i_ctime = FUNC15(FUNC8(file->attribute_mod_date));
		FUNC0(inode)->create_date = file->create_date;
	} else {
		FUNC13("bad catalog entry used to create inode\n");
		res = -EIO;
	}
	return res;
}