#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_key {int dummy; } ;
struct reiserfs_dir_entry {int de_entry_num; int de_item_num; struct item_head* de_ih; struct buffer_head* de_bh; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {struct reiserfs_key const ih_key; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dir_context {void* pos; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {char* b_data; int b_size; } ;
typedef  void* loff_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_16__ {int /*<<< orphan*/  reada; } ;
struct TYPE_15__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 struct reiserfs_de_head* FUNC0 (struct buffer_head*,struct item_head*) ; 
 char* FUNC1 (struct buffer_head*,struct item_head*,struct reiserfs_de_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct reiserfs_key const*,struct cpu_key*) ; 
 int /*<<< orphan*/  DOT_OFFSET ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__) ; 
 int IO_ERROR ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  MIN_KEY ; 
 int /*<<< orphan*/  PATH_READA ; 
 int POSITION_FOUND ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_key const*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct reiserfs_de_head*) ; 
 void* FUNC11 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct dir_context*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct buffer_head*,struct item_head*,int) ; 
 struct reiserfs_key* FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC15 (struct item_head*) ; 
 scalar_t__ FUNC16 (struct inode*,struct reiserfs_de_head*) ; 
 scalar_t__ FUNC17 (struct item_head*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 char* FUNC19 (int,int /*<<< orphan*/ ) ; 
 void* FUNC20 (int /*<<< orphan*/ ,struct reiserfs_key const*) ; 
 int /*<<< orphan*/  FUNC21 (struct cpu_key*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 TYPE_2__ path_to_entry ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int FUNC29 (TYPE_1__*) ; 
 int FUNC30 (TYPE_1__*,struct cpu_key*,TYPE_2__*,struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC31 (struct cpu_key*,void*) ; 
 int /*<<< orphan*/  FUNC32 (struct item_head*,struct item_head*) ; 
 int FUNC33 (char*) ; 

int FUNC34(struct inode *inode, struct dir_context *ctx)
{

	/* key of current position in the directory (key of directory entry) */
	struct cpu_key pos_key;

	FUNC4(path_to_entry);
	struct buffer_head *bh;
	int item_num, entry_num;
	const struct reiserfs_key *rkey;
	struct item_head *ih, tmp_ih;
	int search_res;
	char *local_buf;
	loff_t next_pos;
	char small_buf[32];	/* avoid kmalloc if we can */
	struct reiserfs_dir_entry de;
	int ret = 0;
	int depth;

	FUNC26(inode->i_sb);

	FUNC24(inode->i_sb, "readdir");

	/*
	 * form key for search the next directory entry using
	 * f_pos field of file structure
	 */
	FUNC21(&pos_key, inode, ctx->pos ?: DOT_OFFSET, TYPE_DIRENTRY, 3);
	next_pos = FUNC8(&pos_key);

	path_to_entry.reada = PATH_READA;
	while (1) {
research:
		/*
		 * search the directory item, containing entry with
		 * specified key
		 */
		search_res =
		    FUNC30(inode->i_sb, &pos_key, &path_to_entry,
					&de);
		if (search_res == IO_ERROR) {
			/*
			 * FIXME: we could just skip part of directory
			 * which could not be read
			 */
			ret = -EIO;
			goto out;
		}
		entry_num = de.de_entry_num;
		bh = de.de_bh;
		item_num = de.de_item_num;
		ih = de.de_ih;
		FUNC32(&tmp_ih, ih);

		/* we must have found item, that is item of this directory, */
		FUNC6(FUNC3(&ih->ih_key, &pos_key),
		       "vs-9000: found item %h does not match to dir we readdir %K",
		       ih, &pos_key);
		FUNC6(item_num > FUNC2(bh) - 1,
		       "vs-9005 item_num == %d, item amount == %d",
		       item_num, FUNC2(bh));

		/*
		 * and entry must be not more than number of entries
		 * in the item
		 */
		FUNC6(FUNC15(ih) < entry_num,
		       "vs-9010: entry number is too big %d (%d)",
		       entry_num, FUNC15(ih));

		/*
		 * go through all entries in the directory item beginning
		 * from the entry, that has been found
		 */
		if (search_res == POSITION_FOUND
		    || entry_num < FUNC15(ih)) {
			struct reiserfs_de_head *deh =
			    FUNC0(bh, ih) + entry_num;

			for (; entry_num < FUNC15(ih);
			     entry_num++, deh++) {
				int d_reclen;
				char *d_name;
				ino_t d_ino;
				loff_t cur_pos = FUNC11(deh);

				/* it is hidden entry */
				if (!FUNC9(deh))
					continue;
				d_reclen = FUNC13(bh, ih, entry_num);
				d_name = FUNC1(bh, ih, deh);

				if (d_reclen <= 0 ||
				    d_name + d_reclen > bh->b_data + bh->b_size) {
					/*
					 * There is corrupted data in entry,
					 * We'd better stop here
					 */
					FUNC23(&path_to_entry);
					ret = -EIO;
					goto out;
				}

				if (!d_name[d_reclen - 1])
					d_reclen = FUNC33(d_name);

				/* too big to send back to VFS */
				if (d_reclen >
				    FUNC5(inode->i_sb->
						      s_blocksize)) {
					continue;
				}

				/* Ignore the .reiserfs_priv entry */
				if (FUNC16(inode, deh))
					continue;

				ctx->pos = FUNC11(deh);
				d_ino = FUNC10(deh);
				if (d_reclen <= 32) {
					local_buf = small_buf;
				} else {
					local_buf = FUNC19(d_reclen,
							    GFP_NOFS);
					if (!local_buf) {
						FUNC23(&path_to_entry);
						ret = -ENOMEM;
						goto out;
					}
					if (FUNC17(&tmp_ih, &path_to_entry)) {
						FUNC18(local_buf);
						goto research;
					}
				}

				/*
				 * Note, that we copy name to user space via
				 * temporary buffer (local_buf) because
				 * filldir will block if user space buffer is
				 * swapped out. At that time entry can move to
				 * somewhere else
				 */
				FUNC22(local_buf, d_name, d_reclen);

				/*
				 * Since filldir might sleep, we can release
				 * the write lock here for other waiters
				 */
				depth = FUNC29(inode->i_sb);
				if (!FUNC12
				    (ctx, local_buf, d_reclen, d_ino,
				     DT_UNKNOWN)) {
					FUNC27(inode->i_sb, depth);
					if (local_buf != small_buf) {
						FUNC18(local_buf);
					}
					goto end;
				}
				FUNC27(inode->i_sb, depth);
				if (local_buf != small_buf) {
					FUNC18(local_buf);
				}

				/* deh_offset(deh) may be invalid now. */
				next_pos = cur_pos + 1;

				if (FUNC17(&tmp_ih, &path_to_entry)) {
					FUNC31(&pos_key,
							     next_pos);
					goto research;
				}
			}	/* for */
		}

		/* end of directory has been reached */
		if (item_num != FUNC2(bh) - 1)
			goto end;

		/*
		 * item we went through is last item of node. Using right
		 * delimiting key check is it directory end
		 */
		rkey = FUNC14(&path_to_entry, inode->i_sb);
		if (!FUNC7(rkey, &MIN_KEY)) {
			/*
			 * set pos_key to key, that is the smallest and greater
			 * that key of the last entry in the item
			 */
			FUNC31(&pos_key, next_pos);
			continue;
		}

		/* end of directory has been reached */
		if (FUNC3(rkey, &pos_key)) {
			goto end;
		}

		/* directory continues in the right neighboring block */
		FUNC31(&pos_key,
				     FUNC20(KEY_FORMAT_3_5, rkey));

	}			/* while */

end:
	ctx->pos = next_pos;
	FUNC23(&path_to_entry);
	FUNC25(&path_to_entry);
out:
	FUNC28(inode->i_sb);
	return ret;
}