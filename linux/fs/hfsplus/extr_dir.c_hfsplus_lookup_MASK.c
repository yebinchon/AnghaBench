#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct super_block {int /*<<< orphan*/  s_root; } ;
struct qstr {char* name; int /*<<< orphan*/  len; } ;
struct inode {int /*<<< orphan*/  i_mode; struct super_block* i_sb; int /*<<< orphan*/  i_ino; } ;
struct hfsplus_cat_folder {int dummy; } ;
struct hfsplus_cat_file {int dummy; } ;
struct hfs_find_data {int entrylength; int /*<<< orphan*/  search_key; } ;
struct dentry {int /*<<< orphan*/ * d_fsdata; struct qstr d_name; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {scalar_t__ fdType; scalar_t__ fdCreator; } ;
struct TYPE_12__ {scalar_t__ create_date; TYPE_3__ permissions; TYPE_2__ user_info; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_13__ {TYPE_4__ file; TYPE_1__ folder; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ hfsplus_cat_entry ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_15__ {scalar_t__ create_date; int linkid; } ;
struct TYPE_14__ {struct inode* hidden_dir; int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ HFSPLUS_FILE ; 
 scalar_t__ HFSPLUS_FOLDER ; 
 TYPE_8__* FUNC2 (struct inode*) ; 
 TYPE_7__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  HFSP_HARDLINK_TYPE ; 
 int /*<<< orphan*/  HFSP_HFSPLUS_CREATOR ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC10 (struct inode*,struct dentry*) ; 
 int FUNC11 (struct hfs_find_data*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hfs_find_data*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int FUNC14 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr*) ; 
 struct inode* FUNC15 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static struct dentry *FUNC19(struct inode *dir, struct dentry *dentry,
				     unsigned int flags)
{
	struct inode *inode = NULL;
	struct hfs_find_data fd;
	struct super_block *sb;
	hfsplus_cat_entry entry;
	int err;
	u32 cnid, linkid = 0;
	u16 type;

	sb = dir->i_sb;

	dentry->d_fsdata = NULL;
	err = FUNC13(FUNC3(sb)->cat_tree, &fd);
	if (err)
		return FUNC1(err);
	err = FUNC14(sb, fd.search_key, dir->i_ino,
			&dentry->d_name);
	if (FUNC18(err < 0))
		goto fail;
again:
	err = FUNC11(&fd, &entry, sizeof(entry));
	if (err) {
		if (err == -ENOENT) {
			FUNC12(&fd);
			/* No such entry */
			inode = NULL;
			goto out;
		}
		goto fail;
	}
	type = FUNC6(entry.type);
	if (type == HFSPLUS_FOLDER) {
		if (fd.entrylength < sizeof(struct hfsplus_cat_folder)) {
			err = -EIO;
			goto fail;
		}
		cnid = FUNC7(entry.folder.id);
		dentry->d_fsdata = (void *)(unsigned long)cnid;
	} else if (type == HFSPLUS_FILE) {
		if (fd.entrylength < sizeof(struct hfsplus_cat_file)) {
			err = -EIO;
			goto fail;
		}
		cnid = FUNC7(entry.file.id);
		if (entry.file.user_info.fdType ==
				FUNC8(HFSP_HARDLINK_TYPE) &&
				entry.file.user_info.fdCreator ==
				FUNC8(HFSP_HFSPLUS_CREATOR) &&
				FUNC3(sb)->hidden_dir &&
				(entry.file.create_date ==
					FUNC2(FUNC3(sb)->hidden_dir)->
						create_date ||
				entry.file.create_date ==
					FUNC2(FUNC9(sb->s_root))->
						create_date)) {
			struct qstr str;
			char name[32];

			if (dentry->d_fsdata) {
				/*
				 * We found a link pointing to another link,
				 * so ignore it and treat it as regular file.
				 */
				cnid = (unsigned long)dentry->d_fsdata;
				linkid = 0;
			} else {
				dentry->d_fsdata = (void *)(unsigned long)cnid;
				linkid =
					FUNC7(entry.file.permissions.dev);
				str.len = FUNC17(name, "iNode%d", linkid);
				str.name = name;
				err = FUNC14(sb, fd.search_key,
					FUNC3(sb)->hidden_dir->i_ino,
					&str);
				if (FUNC18(err < 0))
					goto fail;
				goto again;
			}
		} else if (!dentry->d_fsdata)
			dentry->d_fsdata = (void *)(unsigned long)cnid;
	} else {
		FUNC16("invalid catalog entry type in lookup\n");
		err = -EIO;
		goto fail;
	}
	FUNC12(&fd);
	inode = FUNC15(dir->i_sb, cnid);
	if (FUNC4(inode))
		return FUNC0(inode);
	if (FUNC5(inode->i_mode))
		FUNC2(inode)->linkid = linkid;
out:
	return FUNC10(inode, dentry);
fail:
	FUNC12(&fd);
	return FUNC1(err);
}