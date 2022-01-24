#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
struct TYPE_13__ {TYPE_1__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_12__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_11__ {int /*<<< orphan*/  i_datasync_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_10__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct inode*) ; 
 TYPE_2__* FUNC7 () ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct page*,unsigned int,unsigned int) ; 
 int FUNC10 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (struct inode*,int) ; 
 int FUNC16 (struct inode*) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,int,unsigned int,unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  write_end_fn ; 

__attribute__((used)) static int FUNC25(struct file *file,
				     struct address_space *mapping,
				     loff_t pos, unsigned len, unsigned copied,
				     struct page *page, void *fsdata)
{
	handle_t *handle = FUNC7();
	struct inode *inode = mapping->host;
	loff_t old_size = inode->i_size;
	int ret = 0, ret2;
	int partial = 0;
	unsigned from, to;
	int size_changed = 0;
	int inline_data = FUNC6(inode);
	bool verity = FUNC16(inode);

	FUNC22(inode, pos, len, copied);
	from = pos & (PAGE_SIZE - 1);
	to = from + len;

	FUNC0(!FUNC5(handle));

	if (inline_data) {
		ret = FUNC18(inode, pos, len,
						 copied, page);
		if (ret < 0) {
			FUNC24(page);
			FUNC21(page);
			goto errout;
		}
		copied = ret;
	} else if (FUNC23(copied < len) && !FUNC2(page)) {
		copied = 0;
		FUNC9(handle, page, from, to);
	} else {
		if (FUNC23(copied < len))
			FUNC9(handle, page,
							 from + copied, to);
		ret = FUNC17(handle, FUNC19(page), from,
					     from + copied, &partial,
					     write_end_fn);
		if (!partial)
			FUNC3(page);
	}
	if (!verity)
		size_changed = FUNC15(inode, pos + copied);
	FUNC13(inode, EXT4_STATE_JDATA);
	FUNC1(inode)->i_datasync_tid = handle->h_transaction->t_tid;
	FUNC24(page);
	FUNC21(page);

	if (old_size < pos && !verity)
		FUNC20(inode, old_size, pos);

	if (size_changed || inline_data) {
		ret2 = FUNC10(handle, inode);
		if (!ret)
			ret = ret2;
	}

	if (pos + len > inode->i_size && !verity && FUNC4(inode))
		/* if we have allocated more blocks and copied
		 * less. We will have blocks allocated outside
		 * inode->i_size. So truncate them
		 */
		FUNC11(handle, inode);

errout:
	ret2 = FUNC8(handle);
	if (!ret)
		ret = ret2;
	if (pos + len > inode->i_size && !verity) {
		FUNC14(inode);
		/*
		 * If truncate failed early the inode might still be
		 * on the orphan list; we need to make sure the inode
		 * is removed from the orphan list in that case.
		 */
		if (inode->i_nlink)
			FUNC12(NULL, inode);
	}

	return ret ? ret : copied;
}