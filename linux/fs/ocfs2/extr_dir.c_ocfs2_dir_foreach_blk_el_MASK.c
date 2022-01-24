#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int s_blocksize; unsigned long s_blocksize_bits; } ;
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; int /*<<< orphan*/  file_type; int /*<<< orphan*/  inode; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
struct inode {struct super_block* i_sb; } ;
struct dir_context {int pos; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_BH_READAHEAD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ; 
 scalar_t__ FUNC10 (struct inode*,unsigned long,struct buffer_head**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
				    u64 *f_version,
				    struct dir_context *ctx,
				    bool persist)
{
	unsigned long offset, blk, last_ra_blk = 0;
	int i;
	struct buffer_head * bh, * tmp;
	struct ocfs2_dir_entry * de;
	struct super_block * sb = inode->i_sb;
	unsigned int ra_sectors = 16;
	int stored = 0;

	bh = NULL;

	offset = ctx->pos & (sb->s_blocksize - 1);

	while (ctx->pos < FUNC4(inode)) {
		blk = ctx->pos >> sb->s_blocksize_bits;
		if (FUNC10(inode, blk, &bh, 0)) {
			/* Skip the corrupt dirblock and keep trying */
			ctx->pos += sb->s_blocksize - offset;
			continue;
		}

		/* The idea here is to begin with 8k read-ahead and to stay
		 * 4k ahead of our current position.
		 *
		 * TODO: Use the pagecache for this. We just need to
		 * make sure it's cluster-safe... */
		if (!last_ra_blk
		    || (((last_ra_blk - blk) << 9) <= (ra_sectors / 2))) {
			for (i = ra_sectors >> (sb->s_blocksize_bits - 9);
			     i > 0; i--) {
				tmp = NULL;
				if (!FUNC10(inode, ++blk, &tmp,
							  OCFS2_BH_READAHEAD))
					FUNC1(tmp);
			}
			last_ra_blk = blk;
			ra_sectors = 8;
		}

		/* If the dir block has changed since the last call to
		 * readdir(2), then we might be pointing to an invalid
		 * dirent right now.  Scan from the start of the block
		 * to make sure. */
		if (!FUNC5(inode, *f_version)) {
			for (i = 0; i < sb->s_blocksize && i < offset; ) {
				de = (struct ocfs2_dir_entry *) (bh->b_data + i);
				/* It's too expensive to do a full
				 * dirent test each time round this
				 * loop, but we do have to test at
				 * least that it is non-zero.  A
				 * failure will be detected in the
				 * dirent test below. */
				if (FUNC7(de->rec_len) <
				    FUNC0(1))
					break;
				i += FUNC7(de->rec_len);
			}
			offset = i;
			ctx->pos = (ctx->pos & ~(sb->s_blocksize - 1))
				| offset;
			*f_version = FUNC6(inode);
		}

		while (ctx->pos < FUNC4(inode)
		       && offset < sb->s_blocksize) {
			de = (struct ocfs2_dir_entry *) (bh->b_data + offset);
			if (!FUNC9(inode, de, bh, offset)) {
				/* On error, skip the f_pos to the
				   next block. */
				ctx->pos = (ctx->pos | (sb->s_blocksize - 1)) + 1;
				break;
			}
			if (FUNC8(de->inode)) {
				if (!FUNC2(ctx, de->name,
						de->name_len,
						FUNC8(de->inode),
					FUNC3(de->file_type))) {
					FUNC1(bh);
					return 0;
				}
				stored++;
			}
			offset += FUNC7(de->rec_len);
			ctx->pos += FUNC7(de->rec_len);
		}
		offset = 0;
		FUNC1(bh);
		bh = NULL;
		if (!persist && stored)
			break;
	}
	return 0;
}