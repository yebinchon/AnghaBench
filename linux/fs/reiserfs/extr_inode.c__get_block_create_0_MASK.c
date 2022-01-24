#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct item_head {int dummy; } ;
struct inode {scalar_t__ i_size; TYPE_2__* i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ sector_t ;
typedef  int loff_t ;
typedef  scalar_t__ b_blocknr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_11__ {int s_blocksize; } ;
struct TYPE_10__ {int pos_in_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct buffer_head*) ; 
 int EIO ; 
 int ENOENT ; 
 int GET_BLOCK_NO_HOLE ; 
 int GET_BLOCK_READ_DIRECT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int IO_ERROR ; 
 int PAGE_SIZE ; 
 int FUNC3 (TYPE_1__*) ; 
 int POSITION_FOUND ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_ANY ; 
 int UNFM_P_SIZE ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct item_head*,struct item_head*) ; 
 int FUNC7 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct buffer_head* FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (struct buffer_head*,struct item_head*) ; 
 int FUNC12 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct item_head*) ; 
 scalar_t__ FUNC14 (struct item_head*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct cpu_key*,struct inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ path ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int FUNC23 (TYPE_2__*,struct cpu_key*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct cpu_key*,int) ; 
 struct item_head* FUNC27 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC28(struct inode *inode, sector_t block,
			       struct buffer_head *bh_result, int args)
{
	FUNC2(path);
	struct cpu_key key;
	struct buffer_head *bh;
	struct item_head *ih, tmp_ih;
	b_blocknr_t blocknr;
	char *p = NULL;
	int chars;
	int ret;
	int result;
	int done = 0;
	unsigned long offset;

	/* prepare the key to look for the 'block'-th block of file */
	FUNC18(&key, inode,
		     (loff_t) block * inode->i_sb->s_blocksize + 1, TYPE_ANY,
		     3);

	result = FUNC23(inode->i_sb, &key, &path);
	if (result != POSITION_FOUND) {
		FUNC22(&path);
		if (p)
			FUNC16(bh_result->b_page);
		if (result == IO_ERROR)
			return -EIO;
		/*
		 * We do not return -ENOENT if there is a hole but page is
		 * uptodate, because it means that there is some MMAPED data
		 * associated with it that is yet to be written to disk.
		 */
		if ((args & GET_BLOCK_NO_HOLE)
		    && !FUNC4(bh_result->b_page)) {
			return -ENOENT;
		}
		return 0;
	}

	bh = FUNC10(&path);
	ih = FUNC27(&path);
	if (FUNC14(ih)) {
		__le32 *ind_item = (__le32 *) FUNC11(bh, ih);

		/*
		 * FIXME: here we could cache indirect item or part of it in
		 * the inode to avoid search_by_key in case of subsequent
		 * access to file
		 */
		blocknr = FUNC9(ind_item, path.pos_in_item);
		ret = 0;
		if (blocknr) {
			FUNC19(bh_result, inode->i_sb, blocknr);
			if (path.pos_in_item ==
			    ((FUNC12(ih) / UNFM_P_SIZE) - 1)) {
				FUNC24(bh_result);
			}
		} else
			/*
			 * We do not return -ENOENT if there is a hole but
			 * page is uptodate, because it means that there is
			 * some MMAPED data associated with it that is
			 * yet to be written to disk.
			 */
		if ((args & GET_BLOCK_NO_HOLE)
			    && !FUNC4(bh_result->b_page)) {
			ret = -ENOENT;
		}

		FUNC22(&path);
		if (p)
			FUNC16(bh_result->b_page);
		return ret;
	}
	/* requested data are in direct item(s) */
	if (!(args & GET_BLOCK_READ_DIRECT)) {
		/*
		 * we are called by bmap. FIXME: we can not map block of file
		 * when it is stored in direct item(s)
		 */
		FUNC22(&path);
		if (p)
			FUNC16(bh_result->b_page);
		return -ENOENT;
	}

	/*
	 * if we've got a direct item, and the buffer or page was uptodate,
	 * we don't want to pull data off disk again.  skip to the
	 * end, where we map the buffer and return
	 */
	if (FUNC5(bh_result)) {
		goto finished;
	} else
		/*
		 * grab_tail_page can trigger calls to reiserfs_get_block on
		 * up to date pages without any buffers.  If the page is up
		 * to date, we don't want read old data off disk.  Set the up
		 * to date bit on the buffer instead and jump to the end
		 */
	if (!bh_result->b_page || FUNC4(bh_result->b_page)) {
		FUNC25(bh_result);
		goto finished;
	}
	/* read file tail into part of page */
	offset = (FUNC7(&key) - 1) & (PAGE_SIZE - 1);
	FUNC6(&tmp_ih, ih);

	/*
	 * we only want to kmap if we are reading the tail into the page.
	 * this is not the common case, so we don't kmap until we are
	 * sure we need to.  But, this means the item might move if
	 * kmap schedules
	 */
	if (!p)
		p = (char *)FUNC15(bh_result->b_page);

	p += offset;
	FUNC21(p, 0, inode->i_sb->s_blocksize);
	do {
		if (!FUNC13(ih)) {
			FUNC0();
		}
		/*
		 * make sure we don't read more bytes than actually exist in
		 * the file.  This can happen in odd cases where i_size isn't
		 * correct, and when direct item padding results in a few
		 * extra bytes at the end of the direct item
		 */
		if ((FUNC17(ih) + path.pos_in_item) > inode->i_size)
			break;
		if ((FUNC17(ih) - 1 + FUNC12(ih)) > inode->i_size) {
			chars =
			    inode->i_size - (FUNC17(ih) - 1) -
			    path.pos_in_item;
			done = 1;
		} else {
			chars = FUNC12(ih) - path.pos_in_item;
		}
		FUNC20(p, FUNC11(bh, ih) + path.pos_in_item, chars);

		if (done)
			break;

		p += chars;

		/*
		 * we done, if read direct item is not the last item of
		 * node FIXME: we could try to check right delimiting key
		 * to see whether direct item continues in the right
		 * neighbor or rely on i_size
		 */
		if (FUNC3(&path) != (FUNC1(bh) - 1))
			break;

		/* update key to look for the next piece */
		FUNC26(&key, FUNC7(&key) + chars);
		result = FUNC23(inode->i_sb, &key, &path);
		if (result != POSITION_FOUND)
			/* i/o error most likely */
			break;
		bh = FUNC10(&path);
		ih = FUNC27(&path);
	} while (1);

	FUNC8(bh_result->b_page);
	FUNC16(bh_result->b_page);

finished:
	FUNC22(&path);

	if (result == IO_ERROR)
		return -EIO;

	/*
	 * this buffer has valid data, but isn't valid for io.  mapping it to
	 * block #0 tells the rest of reiserfs it just has a tail in it
	 */
	FUNC19(bh_result, inode->i_sb, 0);
	FUNC25(bh_result);
	return 0;
}