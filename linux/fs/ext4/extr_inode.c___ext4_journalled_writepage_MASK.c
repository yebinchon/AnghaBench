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
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_13__ {TYPE_1__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_12__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_11__ {int /*<<< orphan*/  i_datasync_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  EXT4_HT_WRITE_PAGE ; 
 TYPE_10__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  bget_one ; 
 int /*<<< orphan*/  bput_one ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 unsigned int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct inode*) ; 
 TYPE_2__* FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*) ; 
 struct buffer_head* FUNC12 (struct inode*,unsigned int,struct page*) ; 
 int FUNC13 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,struct buffer_head*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 struct buffer_head* FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  write_end_fn ; 

__attribute__((used)) static int FUNC22(struct page *page,
				       unsigned int len)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = mapping->host;
	struct buffer_head *page_bufs = NULL;
	handle_t *handle = NULL;
	int ret = 0, err = 0;
	int inline_data = FUNC9(inode);
	struct buffer_head *inode_bh = NULL;

	FUNC2(page);

	if (inline_data) {
		FUNC1(page->index != 0);
		FUNC1(len > FUNC7(inode));
		inode_bh = FUNC12(inode, len, page);
		if (inode_bh == NULL)
			goto out;
	} else {
		page_bufs = FUNC19(page);
		if (!page_bufs) {
			FUNC0();
			goto out;
		}
		FUNC15(handle, page_bufs, 0, len,
				       NULL, bget_one);
	}
	/*
	 * We need to release the page lock before we start the
	 * journal, so grab a reference so the page won't disappear
	 * out from under us.
	 */
	FUNC17(page);
	FUNC21(page);

	handle = FUNC10(inode, EXT4_HT_WRITE_PAGE,
				    FUNC16(inode));
	if (FUNC4(handle)) {
		ret = FUNC5(handle);
		FUNC20(page);
		goto out_no_pagelock;
	}
	FUNC1(!FUNC8(handle));

	FUNC18(page);
	FUNC20(page);
	if (page->mapping != mapping) {
		/* The page got truncated from under us */
		FUNC11(handle);
		ret = 0;
		goto out;
	}

	if (inline_data) {
		ret = FUNC13(handle, inode);
	} else {
		ret = FUNC15(handle, page_bufs, 0, len, NULL,
					     do_journal_get_write_access);

		err = FUNC15(handle, page_bufs, 0, len, NULL,
					     write_end_fn);
	}
	if (ret == 0)
		ret = err;
	FUNC3(inode)->i_datasync_tid = handle->h_transaction->t_tid;
	err = FUNC11(handle);
	if (!ret)
		ret = err;

	if (!FUNC9(inode))
		FUNC15(NULL, page_bufs, 0, len,
				       NULL, bput_one);
	FUNC14(inode, EXT4_STATE_JDATA);
out:
	FUNC21(page);
out_no_pagelock:
	FUNC6(inode_bh);
	return ret;
}