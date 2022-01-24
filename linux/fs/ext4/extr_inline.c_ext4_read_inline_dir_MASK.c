#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct file {int /*<<< orphan*/  f_version; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct ext4_dir_entry_2 {char* name; int name_len; int /*<<< orphan*/  rec_len; int /*<<< orphan*/  file_type; int /*<<< orphan*/  inode; } ;
struct dir_context {unsigned int pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int ENOMEM ; 
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int EXT4_INLINE_DOTDOT_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_context*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*,struct file*,struct ext4_dir_entry_2*,int /*<<< orphan*/ ,void*,int,void*) ; 
 int FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,void*,int,struct ext4_iloc*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 void* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct file *file,
			 struct dir_context *ctx,
			 int *has_inline_data)
{
	unsigned int offset, parent_ino;
	int i;
	struct ext4_dir_entry_2 *de;
	struct super_block *sb;
	struct inode *inode = FUNC11(file);
	int ret, inline_size = 0;
	struct ext4_iloc iloc;
	void *dir_buf = NULL;
	int dotdot_offset, dotdot_size, extra_offset, extra_size;

	ret = FUNC7(inode, &iloc);
	if (ret)
		return ret;

	FUNC4(&FUNC1(inode)->xattr_sem);
	if (!FUNC8(inode)) {
		FUNC18(&FUNC1(inode)->xattr_sem);
		*has_inline_data = 0;
		goto out;
	}

	inline_size = FUNC6(inode);
	dir_buf = FUNC16(inline_size, GFP_NOFS);
	if (!dir_buf) {
		ret = -ENOMEM;
		FUNC18(&FUNC1(inode)->xattr_sem);
		goto out;
	}

	ret = FUNC9(inode, dir_buf, inline_size, &iloc);
	FUNC18(&FUNC1(inode)->xattr_sem);
	if (ret < 0)
		goto out;

	ret = 0;
	sb = inode->i_sb;
	parent_ino = FUNC17(((struct ext4_dir_entry_2 *)dir_buf)->inode);
	offset = ctx->pos;

	/*
	 * dotdot_offset and dotdot_size is the real offset and
	 * size for ".." and "." if the dir is block based while
	 * the real size for them are only EXT4_INLINE_DOTDOT_SIZE.
	 * So we will use extra_offset and extra_size to indicate them
	 * during the inline dir iteration.
	 */
	dotdot_offset = FUNC0(1);
	dotdot_size = dotdot_offset + FUNC0(2);
	extra_offset = dotdot_size - EXT4_INLINE_DOTDOT_SIZE;
	extra_size = extra_offset + inline_size;

	/*
	 * If the version has changed since the last call to
	 * readdir(2), then we might be pointing to an invalid
	 * dirent right now.  Scan from the start of the inline
	 * dir to make sure.
	 */
	if (!FUNC13(inode, file->f_version)) {
		for (i = 0; i < extra_size && i < offset;) {
			/*
			 * "." is with offset 0 and
			 * ".." is dotdot_offset.
			 */
			if (!i) {
				i = dotdot_offset;
				continue;
			} else if (i == dotdot_offset) {
				i = dotdot_size;
				continue;
			}
			/* for other entry, the real offset in
			 * the buf has to be tuned accordingly.
			 */
			de = (struct ext4_dir_entry_2 *)
				(dir_buf + i - extra_offset);
			/* It's too expensive to do a full
			 * dirent test each time round this
			 * loop, but we do have to test at
			 * least that it is non-zero.  A
			 * failure will be detected in the
			 * dirent test below. */
			if (FUNC10(de->rec_len, extra_size)
				< FUNC0(1))
				break;
			i += FUNC10(de->rec_len,
						    extra_size);
		}
		offset = i;
		ctx->pos = offset;
		file->f_version = FUNC14(inode);
	}

	while (ctx->pos < extra_size) {
		if (ctx->pos == 0) {
			if (!FUNC3(ctx, ".", 1, inode->i_ino, DT_DIR))
				goto out;
			ctx->pos = dotdot_offset;
			continue;
		}

		if (ctx->pos == dotdot_offset) {
			if (!FUNC3(ctx, "..", 2, parent_ino, DT_DIR))
				goto out;
			ctx->pos = dotdot_size;
			continue;
		}

		de = (struct ext4_dir_entry_2 *)
			(dir_buf + ctx->pos - extra_offset);
		if (FUNC5(inode, file, de, iloc.bh, dir_buf,
					 extra_size, ctx->pos))
			goto out;
		if (FUNC17(de->inode)) {
			if (!FUNC3(ctx, de->name, de->name_len,
				      FUNC17(de->inode),
				      FUNC12(sb, de->file_type)))
				goto out;
		}
		ctx->pos += FUNC10(de->rec_len, extra_size);
	}
out:
	FUNC15(dir_buf);
	FUNC2(iloc.bh);
	return ret;
}