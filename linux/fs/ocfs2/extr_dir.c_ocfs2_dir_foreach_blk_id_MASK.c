#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_inline_data {scalar_t__ id_data; } ;
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; int /*<<< orphan*/  file_type; int /*<<< orphan*/  inode; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct dir_context {unsigned long pos; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ; 
 int FUNC12 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
				    u64 *f_version,
				    struct dir_context *ctx)
{
	int ret, i;
	unsigned long offset = ctx->pos;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di;
	struct ocfs2_inline_data *data;
	struct ocfs2_dir_entry *de;

	ret = FUNC12(inode, &di_bh);
	if (ret) {
		FUNC10(ML_ERROR, "Unable to read inode block for dir %llu\n",
		     (unsigned long long)FUNC1(inode)->ip_blkno);
		goto out;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;
	data = &di->id2.i_data;

	while (ctx->pos < FUNC5(inode)) {
		/* If the dir block has changed since the last call to
		 * readdir(2), then we might be pointing to an invalid
		 * dirent right now.  Scan from the start of the block
		 * to make sure. */
		if (!FUNC6(inode, *f_version)) {
			for (i = 0; i < FUNC5(inode) && i < offset; ) {
				de = (struct ocfs2_dir_entry *)
					(data->id_data + i);
				/* It's too expensive to do a full
				 * dirent test each time round this
				 * loop, but we do have to test at
				 * least that it is non-zero.  A
				 * failure will be detected in the
				 * dirent test below. */
				if (FUNC8(de->rec_len) <
				    FUNC0(1))
					break;
				i += FUNC8(de->rec_len);
			}
			ctx->pos = offset = i;
			*f_version = FUNC7(inode);
		}

		de = (struct ocfs2_dir_entry *) (data->id_data + ctx->pos);
		if (!FUNC11(inode, de, di_bh, ctx->pos)) {
			/* On error, skip the f_pos to the end. */
			ctx->pos = FUNC5(inode);
			break;
		}
		offset += FUNC8(de->rec_len);
		if (FUNC9(de->inode)) {
			if (!FUNC3(ctx, de->name, de->name_len,
				      FUNC9(de->inode),
				      FUNC4(de->file_type)))
				goto out;
		}
		ctx->pos += FUNC8(de->rec_len);
	}
out:
	FUNC2(di_bh);
	return 0;
}