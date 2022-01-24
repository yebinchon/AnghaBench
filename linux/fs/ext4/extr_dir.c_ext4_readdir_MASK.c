#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; TYPE_2__* s_bdev; } ;
struct inode {int i_size; int i_blkbits; int i_blocks; struct super_block* i_sb; } ;
struct fscrypt_str {int len; int /*<<< orphan*/ * name; } ;
struct TYPE_7__ {int prev_pos; } ;
struct file {int /*<<< orphan*/  f_version; TYPE_3__ f_ra; } ;
struct ext4_map_blocks {int m_lblk; int m_len; int m_pblk; } ;
struct ext4_dir_entry_2 {int name_len; int /*<<< orphan*/  rec_len; int /*<<< orphan*/  file_type; int /*<<< orphan*/  inode; int /*<<< orphan*/ * name; } ;
struct dir_context {int pos; } ;
struct buffer_head {int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_6__ {TYPE_1__* bd_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ENOKEY ; 
 int ERESTARTSYS ; 
 int ERR_BAD_DX_DIR ; 
 int FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  EXT4_INODE_INDEX ; 
 int /*<<< orphan*/  EXT4_NAME_LEN ; 
 struct fscrypt_str FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int PAGE_SHIFT ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC10 (struct dir_context*,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 struct buffer_head* FUNC12 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct inode*,struct file*,struct ext4_dir_entry_2*,struct buffer_head*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct buffer_head*) ; 
 int FUNC16 (struct file*,struct dir_context*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct file*,struct dir_context*,int*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC22 (struct file*) ; 
 int FUNC23 (struct inode*,int /*<<< orphan*/ ,struct fscrypt_str*) ; 
 int FUNC24 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fscrypt_str*,struct fscrypt_str*) ; 
 int /*<<< orphan*/  FUNC25 (struct fscrypt_str*) ; 
 int FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 scalar_t__ FUNC30 (struct inode*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,TYPE_3__*,struct file*,int,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC34 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC35(struct file *file, struct dir_context *ctx)
{
	unsigned int offset;
	int i;
	struct ext4_dir_entry_2 *de;
	int err;
	struct inode *inode = FUNC22(file);
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh = NULL;
	struct fscrypt_str fstr = FUNC3(NULL, 0);

	if (FUNC4(inode)) {
		err = FUNC26(inode);
		if (err && err != -ENOKEY)
			return err;
	}

	if (FUNC30(inode)) {
		err = FUNC16(file, ctx);
		if (err != ERR_BAD_DX_DIR) {
			return err;
		}
		/*
		 * We don't set the inode dirty flag since it's not
		 * critical that it get flushed back to the disk.
		 */
		FUNC14(FUNC22(file),
				      EXT4_INODE_INDEX);
	}

	if (FUNC17(inode)) {
		int has_inline_data = 1;
		err = FUNC19(file, ctx,
					   &has_inline_data);
		if (has_inline_data)
			return err;
	}

	if (FUNC4(inode)) {
		err = FUNC23(inode, EXT4_NAME_LEN, &fstr);
		if (err < 0)
			return err;
	}

	while (ctx->pos < inode->i_size) {
		struct ext4_map_blocks map;

		if (FUNC21(current)) {
			err = -ERESTARTSYS;
			goto errout;
		}
		FUNC9();
		offset = ctx->pos & (sb->s_blocksize - 1);
		map.m_lblk = ctx->pos >> FUNC0(sb);
		map.m_len = 1;
		err = FUNC18(NULL, inode, &map, 0);
		if (err == 0) {
			/* m_len should never be zero but let's avoid
			 * an infinite loop if it somehow is */
			if (map.m_len == 0)
				map.m_len = 1;
			ctx->pos += map.m_len * sb->s_blocksize;
			continue;
		}
		if (err > 0) {
			pgoff_t index = map.m_pblk >>
					(PAGE_SHIFT - inode->i_blkbits);
			if (!FUNC33(&file->f_ra, index))
				FUNC32(
					sb->s_bdev->bd_inode->i_mapping,
					&file->f_ra, file,
					index, 1);
			file->f_ra.prev_pos = (loff_t)index << PAGE_SHIFT;
			bh = FUNC12(NULL, inode, map.m_lblk, 0);
			if (FUNC5(bh)) {
				err = FUNC6(bh);
				bh = NULL;
				goto errout;
			}
		}

		if (!bh) {
			/* corrupt size?  Maybe no more blocks to read */
			if (ctx->pos > inode->i_blocks << 9)
				break;
			ctx->pos += sb->s_blocksize - offset;
			continue;
		}

		/* Check the checksum */
		if (!FUNC8(bh) &&
		    !FUNC15(inode, bh)) {
			FUNC2(file, 0, "directory fails checksum "
					"at offset %llu",
					(unsigned long long)ctx->pos);
			ctx->pos += sb->s_blocksize - offset;
			FUNC7(bh);
			bh = NULL;
			continue;
		}
		FUNC34(bh);

		/* If the dir block has changed since the last call to
		 * readdir(2), then we might be pointing to an invalid
		 * dirent right now.  Scan from the start of the block
		 * to make sure. */
		if (!FUNC28(inode, file->f_version)) {
			for (i = 0; i < sb->s_blocksize && i < offset; ) {
				de = (struct ext4_dir_entry_2 *)
					(bh->b_data + i);
				/* It's too expensive to do a full
				 * dirent test each time round this
				 * loop, but we do have to test at
				 * least that it is non-zero.  A
				 * failure will be detected in the
				 * dirent test below. */
				if (FUNC20(de->rec_len,
					sb->s_blocksize) < FUNC1(1))
					break;
				i += FUNC20(de->rec_len,
							    sb->s_blocksize);
			}
			offset = i;
			ctx->pos = (ctx->pos & ~(sb->s_blocksize - 1))
				| offset;
			file->f_version = FUNC29(inode);
		}

		while (ctx->pos < inode->i_size
		       && offset < sb->s_blocksize) {
			de = (struct ext4_dir_entry_2 *) (bh->b_data + offset);
			if (FUNC13(inode, file, de, bh,
						 bh->b_data, bh->b_size,
						 offset)) {
				/*
				 * On error, skip to the next block
				 */
				ctx->pos = (ctx->pos |
						(sb->s_blocksize - 1)) + 1;
				break;
			}
			offset += FUNC20(de->rec_len,
					sb->s_blocksize);
			if (FUNC31(de->inode)) {
				if (!FUNC4(inode)) {
					if (!FUNC10(ctx, de->name,
					    de->name_len,
					    FUNC31(de->inode),
					    FUNC27(sb, de->file_type)))
						goto done;
				} else {
					int save_len = fstr.len;
					struct fscrypt_str de_name =
							FUNC3(de->name,
								de->name_len);

					/* Directory is encrypted */
					err = FUNC24(inode,
						0, 0, &de_name, &fstr);
					de_name = fstr;
					fstr.len = save_len;
					if (err)
						goto errout;
					if (!FUNC10(ctx,
					    de_name.name, de_name.len,
					    FUNC31(de->inode),
					    FUNC27(sb, de->file_type)))
						goto done;
				}
			}
			ctx->pos += FUNC20(de->rec_len,
						sb->s_blocksize);
		}
		if ((ctx->pos < inode->i_size) && !FUNC11(inode))
			goto done;
		FUNC7(bh);
		bh = NULL;
		offset = 0;
	}
done:
	err = 0;
errout:
	FUNC25(&fstr);
	FUNC7(bh);
	return err;
}