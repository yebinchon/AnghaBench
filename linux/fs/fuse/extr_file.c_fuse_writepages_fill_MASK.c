#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {scalar_t__ index; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  write_flags; } ;
struct TYPE_8__ {TYPE_1__ in; } ;
struct TYPE_9__ {int in_pages; int /*<<< orphan*/  end; } ;
struct fuse_args_pages {int num_pages; TYPE_4__* descs; struct page** pages; TYPE_3__ args; } ;
struct TYPE_12__ {TYPE_2__ write; struct fuse_args_pages ap; } ;
struct fuse_writepage_args {int /*<<< orphan*/  writepages_entry; struct inode* inode; int /*<<< orphan*/ * next; TYPE_6__ ia; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  writepages; } ;
struct fuse_fill_wb_data {int max_pages; struct page** orig_pages; struct fuse_writepage_args* wpa; scalar_t__ ff; struct inode* inode; } ;
struct fuse_conn {int max_pages; int max_write; } ;
struct TYPE_11__ {int /*<<< orphan*/  wb; } ;
struct TYPE_10__ {int length; scalar_t__ offset; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUSE_WRITE_CACHE ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  NR_WRITEBACK_TEMP ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  WB_WRITEBACK ; 
 int __GFP_HIGHMEM ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_fill_wb_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct fuse_conn*,struct fuse_inode*) ; 
 struct fuse_writepage_args* FUNC8 () ; 
 int /*<<< orphan*/  fuse_writepage_end ; 
 scalar_t__ FUNC9 (struct fuse_writepage_args*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_fill_wb_data*) ; 
 struct fuse_conn* FUNC11 (struct inode*) ; 
 struct fuse_inode* FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static int FUNC22(struct page *page,
		struct writeback_control *wbc, void *_data)
{
	struct fuse_fill_wb_data *data = _data;
	struct fuse_writepage_args *wpa = data->wpa;
	struct fuse_args_pages *ap = &wpa->ia.ap;
	struct inode *inode = data->inode;
	struct fuse_inode *fi = FUNC12(inode);
	struct fuse_conn *fc = FUNC11(inode);
	struct page *tmp_page;
	bool is_writeback;
	int err;

	if (!data->ff) {
		err = -EIO;
		data->ff = FUNC7(fc, fi);
		if (!data->ff)
			goto out_unlock;
	}

	/*
	 * Being under writeback is unlikely but possible.  For example direct
	 * read to an mmaped fuse file will set the page dirty twice; once when
	 * the pages are faulted with get_user_pages(), and then after the read
	 * completed.
	 */
	is_writeback = FUNC4(inode, page->index);

	if (wpa && ap->num_pages &&
	    (is_writeback || ap->num_pages == fc->max_pages ||
	     (ap->num_pages + 1) * PAGE_SIZE > fc->max_write ||
	     data->orig_pages[ap->num_pages - 1]->index + 1 != page->index)) {
		FUNC10(data);
		data->wpa = NULL;
	} else if (wpa && ap->num_pages == data->max_pages) {
		if (!FUNC5(data)) {
			FUNC10(data);
			data->wpa = NULL;
		}
	}

	err = -ENOMEM;
	tmp_page = FUNC1(GFP_NOFS | __GFP_HIGHMEM);
	if (!tmp_page)
		goto out_unlock;

	/*
	 * The page must not be redirtied until the writeout is completed
	 * (i.e. userspace has sent a reply to the write request).  Otherwise
	 * there could be more than one temporary page instance for each real
	 * page.
	 *
	 * This is ensured by holding the page lock in page_mkwrite() while
	 * checking fuse_page_is_writeback().  We already hold the page lock
	 * since clear_page_dirty_for_io() and keep it held until we add the
	 * request to the fi->writepages list and increment ap->num_pages.
	 * After this fuse_page_is_writeback() will indicate that the page is
	 * under writeback, so we can release the page lock.
	 */
	if (data->wpa == NULL) {
		err = -ENOMEM;
		wpa = FUNC8();
		if (!wpa) {
			FUNC0(tmp_page);
			goto out_unlock;
		}
		data->max_pages = 1;

		ap = &wpa->ia.ap;
		FUNC6(&wpa->ia, data->ff, FUNC17(page), 0);
		wpa->ia.write.in.write_flags |= FUSE_WRITE_CACHE;
		wpa->next = NULL;
		ap->args.in_pages = true;
		ap->args.end = fuse_writepage_end;
		ap->num_pages = 0;
		wpa->inode = inode;

		FUNC19(&fi->lock);
		FUNC16(&wpa->writepages_entry, &fi->writepages);
		FUNC20(&fi->lock);

		data->wpa = wpa;
	}
	FUNC18(page);

	FUNC2(tmp_page, page);
	ap->pages[ap->num_pages] = tmp_page;
	ap->descs[ap->num_pages].offset = 0;
	ap->descs[ap->num_pages].length = PAGE_SIZE;

	FUNC14(&FUNC15(inode)->wb, WB_WRITEBACK);
	FUNC13(tmp_page, NR_WRITEBACK_TEMP);

	err = 0;
	if (is_writeback && FUNC9(wpa, page)) {
		FUNC3(page);
		data->wpa = NULL;
		goto out_unlock;
	}
	data->orig_pages[ap->num_pages] = page;

	/*
	 * Protected by fi->lock against concurrent access by
	 * fuse_page_is_writeback().
	 */
	FUNC19(&fi->lock);
	ap->num_pages++;
	FUNC20(&fi->lock);

out_unlock:
	FUNC21(page);

	return err;
}