#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_ino; struct super_block* i_sb; } ;
struct hfsplus_readdir_data {int /*<<< orphan*/  key; int /*<<< orphan*/  list; struct file* file; } ;
struct hfsplus_cat_key {int dummy; } ;
struct hfsplus_cat_folder {int dummy; } ;
struct hfsplus_cat_file {int dummy; } ;
struct hfs_find_data {int entrylength; TYPE_8__* key; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; int /*<<< orphan*/  search_key; } ;
struct file {scalar_t__ f_pos; struct hfsplus_readdir_data* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
struct TYPE_18__ {int /*<<< orphan*/  mode; } ;
struct TYPE_19__ {int /*<<< orphan*/  id; TYPE_5__ permissions; } ;
struct TYPE_17__ {int /*<<< orphan*/  id; } ;
struct TYPE_14__ {int /*<<< orphan*/  parentID; } ;
struct TYPE_20__ {TYPE_6__ file; TYPE_4__ folder; int /*<<< orphan*/  type; TYPE_1__ thread; } ;
typedef  TYPE_7__ hfsplus_cat_entry ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_15__ {int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
struct TYPE_21__ {TYPE_2__ cat; } ;
struct TYPE_16__ {scalar_t__ i_ino; } ;
struct TYPE_13__ {int /*<<< orphan*/  open_dir_lock; int /*<<< orphan*/  open_dir_list; } ;
struct TYPE_12__ {TYPE_3__* hidden_dir; int /*<<< orphan*/  cat_tree; } ;

/* Variables and functions */
 unsigned int DT_BLK ; 
 unsigned int DT_CHR ; 
 unsigned int DT_DIR ; 
 unsigned int DT_FIFO ; 
 unsigned int DT_LNK ; 
 unsigned int DT_REG ; 
 unsigned int DT_SOCK ; 
 unsigned int DT_UNKNOWN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HFSPLUS_FILE ; 
 scalar_t__ HFSPLUS_FOLDER ; 
 scalar_t__ HFSPLUS_FOLDER_THREAD ; 
 TYPE_11__* FUNC0 (struct inode*) ; 
 int HFSPLUS_MAX_STRLEN ; 
 int HFSPLUS_MIN_THREAD_SZ ; 
 TYPE_10__* FUNC1 (struct super_block*) ; 
 int NLS_MAX_CHARSET_SIZE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dir_context*,char*,int,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct file*,struct dir_context*) ; 
 struct inode* FUNC12 (struct file*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct hfs_find_data*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hfs_find_data*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct hfs_find_data*) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  hfs_find_rec_by_key ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC19 (struct super_block*,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 void* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC12(file);
	struct super_block *sb = inode->i_sb;
	int len, err;
	char *strbuf;
	hfsplus_cat_entry entry;
	struct hfs_find_data fd;
	struct hfsplus_readdir_data *rd;
	u16 type;

	if (file->f_pos >= inode->i_size)
		return 0;

	err = FUNC17(FUNC1(sb)->cat_tree, &fd);
	if (err)
		return err;
	strbuf = FUNC21(NLS_MAX_CHARSET_SIZE * HFSPLUS_MAX_STRLEN + 1, GFP_KERNEL);
	if (!strbuf) {
		err = -ENOMEM;
		goto out;
	}
	FUNC18(sb, fd.search_key, inode->i_ino);
	err = FUNC14(&fd, hfs_find_rec_by_key);
	if (err)
		goto out;

	if (ctx->pos == 0) {
		/* This is completely artificial... */
		if (!FUNC11(file, ctx))
			goto out;
		ctx->pos = 1;
	}
	if (ctx->pos == 1) {
		if (fd.entrylength > sizeof(entry) || fd.entrylength < 0) {
			err = -EIO;
			goto out;
		}

		FUNC13(fd.bnode, &entry, fd.entryoffset,
			fd.entrylength);
		if (FUNC8(entry.type) != HFSPLUS_FOLDER_THREAD) {
			FUNC24("bad catalog folder thread\n");
			err = -EIO;
			goto out;
		}
		if (fd.entrylength < HFSPLUS_MIN_THREAD_SZ) {
			FUNC24("truncated catalog thread\n");
			err = -EIO;
			goto out;
		}
		if (!FUNC10(ctx, "..", 2,
			    FUNC9(entry.thread.parentID), DT_DIR))
			goto out;
		ctx->pos = 2;
	}
	if (ctx->pos >= inode->i_size)
		goto out;
	err = FUNC15(&fd, ctx->pos - 1);
	if (err)
		goto out;
	for (;;) {
		if (FUNC9(fd.key->cat.parent) != inode->i_ino) {
			FUNC24("walked past end of dir\n");
			err = -EIO;
			goto out;
		}

		if (fd.entrylength > sizeof(entry) || fd.entrylength < 0) {
			err = -EIO;
			goto out;
		}

		FUNC13(fd.bnode, &entry, fd.entryoffset,
			fd.entrylength);
		type = FUNC8(entry.type);
		len = NLS_MAX_CHARSET_SIZE * HFSPLUS_MAX_STRLEN;
		err = FUNC19(sb, &fd.key->cat.name, strbuf, &len);
		if (err)
			goto out;
		if (type == HFSPLUS_FOLDER) {
			if (fd.entrylength <
					sizeof(struct hfsplus_cat_folder)) {
				FUNC24("small dir entry\n");
				err = -EIO;
				goto out;
			}
			if (FUNC1(sb)->hidden_dir &&
			    FUNC1(sb)->hidden_dir->i_ino ==
					FUNC9(entry.folder.id))
				goto next;
			if (!FUNC10(ctx, strbuf, len,
				    FUNC9(entry.folder.id), DT_DIR))
				break;
		} else if (type == HFSPLUS_FILE) {
			u16 mode;
			unsigned type = DT_UNKNOWN;

			if (fd.entrylength < sizeof(struct hfsplus_cat_file)) {
				FUNC24("small file entry\n");
				err = -EIO;
				goto out;
			}

			mode = FUNC8(entry.file.permissions.mode);
			if (FUNC6(mode))
				type = DT_REG;
			else if (FUNC5(mode))
				type = DT_LNK;
			else if (FUNC4(mode))
				type = DT_FIFO;
			else if (FUNC3(mode))
				type = DT_CHR;
			else if (FUNC2(mode))
				type = DT_BLK;
			else if (FUNC7(mode))
				type = DT_SOCK;

			if (!FUNC10(ctx, strbuf, len,
				      FUNC9(entry.file.id), type))
				break;
		} else {
			FUNC24("bad catalog entry type\n");
			err = -EIO;
			goto out;
		}
next:
		ctx->pos++;
		if (ctx->pos >= inode->i_size)
			goto out;
		err = FUNC15(&fd, 1);
		if (err)
			goto out;
	}
	rd = file->private_data;
	if (!rd) {
		rd = FUNC21(sizeof(struct hfsplus_readdir_data), GFP_KERNEL);
		if (!rd) {
			err = -ENOMEM;
			goto out;
		}
		file->private_data = rd;
		rd->file = file;
		FUNC25(&FUNC0(inode)->open_dir_lock);
		FUNC22(&rd->list, &FUNC0(inode)->open_dir_list);
		FUNC26(&FUNC0(inode)->open_dir_lock);
	}
	/*
	 * Can be done after the list insertion; exclusion with
	 * hfsplus_delete_cat() is provided by directory lock.
	 */
	FUNC23(&rd->key, fd.key, sizeof(struct hfsplus_cat_key));
out:
	FUNC20(strbuf);
	FUNC16(&fd);
	return err;
}