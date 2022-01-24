#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {int i_size; int i_ino; TYPE_3__* i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_blocknr; int /*<<< orphan*/  b_page; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_19__ {int s_blocksize_bits; } ;
struct TYPE_18__ {int pos_in_item; } ;

/* Variables and functions */
 int EIO ; 
 int GET_BLOCK_CREATE ; 
 int GET_BLOCK_NO_DANGLE ; 
 int GET_BLOCK_NO_IMUX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int PAGE_SIZE ; 
 int POSITION_FOUND ; 
 int /*<<< orphan*/  TYPE_ANY ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct item_head*,struct item_head*) ; 
 scalar_t__ FUNC5 (struct cpu_key*) ; 
 scalar_t__ FUNC6 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_3__*) ; 
 struct buffer_head* FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct buffer_head*,struct item_head*) ; 
 int FUNC11 (struct item_head*) ; 
 scalar_t__ FUNC12 (int,struct item_head*) ; 
 scalar_t__ FUNC13 (struct item_head*) ; 
 scalar_t__ FUNC14 (struct item_head*,TYPE_1__*) ; 
 int FUNC15 (struct reiserfs_transaction_handle*,TYPE_3__*,int) ; 
 int FUNC16 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC17 (struct reiserfs_transaction_handle*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct cpu_key*,struct inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,char*,int) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_1__ path ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int FUNC25 (struct inode*,unsigned long,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*) ; 
 int FUNC32 (TYPE_3__*,struct cpu_key*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (struct buffer_head*,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC34 (struct cpu_key*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC35 (TYPE_1__*) ; 
 struct item_head* FUNC36 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC37 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC38(struct inode *inode,
				   struct buffer_head *bh_result,
				   unsigned long block)
{
	struct reiserfs_transaction_handle th;
	int fs_gen;
	struct item_head tmp_ih;
	struct item_head *ih;
	struct buffer_head *bh;
	__le32 *item;
	struct cpu_key key;
	FUNC0(path);
	int pos_in_item;
	int jbegin_count = JOURNAL_PER_BALANCE_CNT;
	loff_t byte_offset = ((loff_t)block << inode->i_sb->s_blocksize_bits)+1;
	int retval;
	int use_get_block = 0;
	int bytes_copied = 0;
	int copy_size;
	int trans_running = 0;

	/*
	 * catch places below that try to log something without
	 * starting a trans
	 */
	th.t_trans_id = 0;

	if (!FUNC2(bh_result)) {
		return -EIO;
	}

	FUNC18(bh_result->b_page);
start_over:
	FUNC30(inode->i_sb);
	FUNC21(&key, inode, byte_offset, TYPE_ANY, 3);

research:
	retval = FUNC32(inode->i_sb, &key, &path);
	if (retval != POSITION_FOUND) {
		use_get_block = 1;
		goto out;
	}

	bh = FUNC9(&path);
	ih = FUNC36(&path);
	item = FUNC35(&path);
	pos_in_item = path.pos_in_item;

	/* we've found an unformatted node */
	if (FUNC12(retval, ih)) {
		if (bytes_copied > 0) {
			FUNC29(inode->i_sb, "clm-6002",
					 "bytes_copied %d", bytes_copied);
		}
		if (!FUNC7(item, pos_in_item)) {
			/* crap, we are writing to a hole */
			use_get_block = 1;
			goto out;
		}
		FUNC33(bh_result,
				     FUNC7(item, pos_in_item), inode);
	} else if (FUNC13(ih)) {
		char *p;
		p = FUNC23(bh_result->b_page);
		p += (byte_offset - 1) & (PAGE_SIZE - 1);
		copy_size = FUNC11(ih) - pos_in_item;

		fs_gen = FUNC8(inode->i_sb);
		FUNC4(&tmp_ih, ih);

		if (!trans_running) {
			/* vs-3050 is gone, no need to drop the path */
			retval = FUNC15(&th, inode->i_sb, jbegin_count);
			if (retval)
				goto out;
			FUNC28(inode);
			trans_running = 1;
			if (FUNC6(fs_gen, inode->i_sb)
			    && FUNC14(&tmp_ih, &path)) {
				FUNC27(inode->i_sb,
								 bh);
				goto research;
			}
		}

		FUNC26(inode->i_sb, bh, 1);

		if (FUNC6(fs_gen, inode->i_sb)
		    && FUNC14(&tmp_ih, &path)) {
			FUNC27(inode->i_sb, bh);
			goto research;
		}

		FUNC22(FUNC10(bh, ih) + pos_in_item, p + bytes_copied,
		       copy_size);

		FUNC17(&th, bh);
		bytes_copied += copy_size;
		FUNC33(bh_result, 0, inode);

		/* are there still bytes left? */
		if (bytes_copied < bh_result->b_size &&
		    (byte_offset + bytes_copied) < inode->i_size) {
			FUNC34(&key,
					     FUNC5(&key) +
					     copy_size);
			goto research;
		}
	} else {
		FUNC29(inode->i_sb, "clm-6003",
				 "bad item inode %lu", inode->i_ino);
		retval = -EIO;
		goto out;
	}
	retval = 0;

out:
	FUNC24(&path);
	if (trans_running) {
		int err = FUNC16(&th);
		if (err)
			retval = err;
		trans_running = 0;
	}
	FUNC31(inode->i_sb);

	/* this is where we fill in holes in the file. */
	if (use_get_block) {
		retval = FUNC25(inode, block, bh_result,
					    GET_BLOCK_CREATE | GET_BLOCK_NO_IMUX
					    | GET_BLOCK_NO_DANGLE);
		if (!retval) {
			if (!FUNC1(bh_result)
			    || bh_result->b_blocknr == 0) {
				/* get_block failed to find a mapped unformatted node. */
				use_get_block = 0;
				goto start_over;
			}
		}
	}
	FUNC19(bh_result->b_page);

	if (!retval && FUNC1(bh_result) && bh_result->b_blocknr == 0) {
		/*
		 * we've copied data from the page into the direct item, so the
		 * buffer in the page is now clean, mark it to reflect that.
		 */
		FUNC20(bh_result);
		FUNC3(bh_result);
		FUNC37(bh_result);
	}
	return retval;
}