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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct orangefs_write_range {size_t pos; size_t len; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct bio_vec {size_t bv_len; size_t bv_offset; struct page* bv_page; } ;
typedef  scalar_t__ ssize_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  ORANGEFS_IO_WRITE ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  WRITE ; 
 size_t FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct iov_iter*,int /*<<< orphan*/ ,struct bio_vec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct orangefs_write_range*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 size_t FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct inode*,size_t*,struct iov_iter*,size_t,size_t,struct orangefs_write_range*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct page *page,
    struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct orangefs_write_range *wr = NULL;
	struct iov_iter iter;
	struct bio_vec bv;
	size_t len, wlen;
	ssize_t ret;
	loff_t off;

	FUNC12(page);

	len = FUNC4(inode);
	if (FUNC1(page)) {
		wr = (struct orangefs_write_range *)FUNC9(page);
		FUNC3(wr->pos >= len);
		off = wr->pos;
		if (off + wr->len > len)
			wlen = len - off;
		else
			wlen = wr->len;
	} else {
		FUNC3(1);
		off = FUNC8(page);
		if (off + PAGE_SIZE > len)
			wlen = len - off;
		else
			wlen = PAGE_SIZE;
	}
	/* Should've been handled in orangefs_invalidatepage. */
	FUNC3(off == len || off + wlen > len);

	bv.bv_page = page;
	bv.bv_len = wlen;
	bv.bv_offset = off % PAGE_SIZE;
	FUNC3(wlen == 0);
	FUNC5(&iter, WRITE, &bv, 1, wlen);

	ret = FUNC13(ORANGEFS_IO_WRITE, inode, &off, &iter, wlen,
	    len, wr, NULL);
	if (ret < 0) {
		FUNC2(page);
		FUNC7(page->mapping, ret);
	} else {
		ret = 0;
	}
	if (wr) {
		FUNC6(wr);
		FUNC11(page, 0);
		FUNC0(page);
		FUNC10(page);
	}
	return ret;
}