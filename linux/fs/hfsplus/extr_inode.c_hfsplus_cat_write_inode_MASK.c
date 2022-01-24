#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; scalar_t__ i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_nlink; } ;
struct TYPE_8__ {int rootflags; int userflags; } ;
struct hfsplus_cat_folder {int flags; void* subfolders; void* valence; void* attribute_mod_date; void* content_mod_date; void* access_date; TYPE_2__ permissions; } ;
struct hfsplus_cat_file {int flags; void* attribute_mod_date; void* content_mod_date; void* access_date; TYPE_2__ permissions; int /*<<< orphan*/  data_fork; int /*<<< orphan*/  rsrc_fork; } ;
struct hfs_find_data {int entrylength; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; } ;
struct TYPE_7__ {struct hfsplus_cat_file file; struct hfsplus_cat_folder folder; } ;
typedef  TYPE_1__ hfsplus_cat_entry ;
struct TYPE_10__ {int /*<<< orphan*/  flags; scalar_t__ subfolders; struct inode* rsrc_inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HFSPLUS_FILE_LOCKED ; 
 int HFSPLUS_FLG_IMMUTABLE ; 
 int /*<<< orphan*/  HFSPLUS_HAS_FOLDER_COUNT ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  HFSPLUS_I_CAT_DIRTY ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hfs_find_data*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct inode *inode)
{
	struct inode *main_inode = inode;
	struct hfs_find_data fd;
	hfsplus_cat_entry entry;

	if (FUNC1(inode))
		main_inode = FUNC0(inode)->rsrc_inode;

	if (!main_inode->i_nlink)
		return 0;

	if (FUNC9(FUNC2(main_inode->i_sb)->cat_tree, &fd))
		/* panic? */
		return -EIO;

	if (FUNC12(main_inode->i_sb, main_inode->i_ino, &fd))
		/* panic? */
		goto out;

	if (FUNC3(main_inode->i_mode)) {
		struct hfsplus_cat_folder *folder = &entry.folder;

		if (fd.entrylength < sizeof(struct hfsplus_cat_folder))
			/* panic? */;
		FUNC6(fd.bnode, &entry, fd.entryoffset,
					sizeof(struct hfsplus_cat_folder));
		/* simple node checks? */
		FUNC11(inode, &folder->permissions);
		folder->access_date = FUNC10(inode->i_atime);
		folder->content_mod_date = FUNC10(inode->i_mtime);
		folder->attribute_mod_date = FUNC10(inode->i_ctime);
		folder->valence = FUNC5(inode->i_size - 2);
		if (folder->flags & FUNC4(HFSPLUS_HAS_FOLDER_COUNT)) {
			folder->subfolders =
				FUNC5(FUNC0(inode)->subfolders);
		}
		FUNC7(fd.bnode, &entry, fd.entryoffset,
					 sizeof(struct hfsplus_cat_folder));
	} else if (FUNC1(inode)) {
		struct hfsplus_cat_file *file = &entry.file;
		FUNC6(fd.bnode, &entry, fd.entryoffset,
			       sizeof(struct hfsplus_cat_file));
		FUNC13(inode, &file->rsrc_fork);
		FUNC7(fd.bnode, &entry, fd.entryoffset,
				sizeof(struct hfsplus_cat_file));
	} else {
		struct hfsplus_cat_file *file = &entry.file;

		if (fd.entrylength < sizeof(struct hfsplus_cat_file))
			/* panic? */;
		FUNC6(fd.bnode, &entry, fd.entryoffset,
					sizeof(struct hfsplus_cat_file));
		FUNC13(inode, &file->data_fork);
		FUNC11(inode, &file->permissions);
		if (HFSPLUS_FLG_IMMUTABLE &
				(file->permissions.rootflags |
					file->permissions.userflags))
			file->flags |= FUNC4(HFSPLUS_FILE_LOCKED);
		else
			file->flags &= FUNC4(~HFSPLUS_FILE_LOCKED);
		file->access_date = FUNC10(inode->i_atime);
		file->content_mod_date = FUNC10(inode->i_mtime);
		file->attribute_mod_date = FUNC10(inode->i_ctime);
		FUNC7(fd.bnode, &entry, fd.entryoffset,
					 sizeof(struct hfsplus_cat_file));
	}

	FUNC14(HFSPLUS_I_CAT_DIRTY, &FUNC0(inode)->flags);
out:
	FUNC8(&fd);
	return 0;
}